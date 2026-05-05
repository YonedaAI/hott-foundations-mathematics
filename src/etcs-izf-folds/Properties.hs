{-# LANGUAGE ScopedTypeVariables #-}
-- | QuickCheck properties for FOLDS isomorphism-invariance on finite
-- category models.
--
-- The key claim of Makkai (1995, Theorem 5.4) is that the truth value
-- of any FOLDS sentence (built from atomic predicates I, T, E and
-- equality) is preserved under FOLDS-equivalence.  Counts of objects,
-- arrows, or identities are NOT atomic FOLDS predicates and need not
-- be invariant under genuine FOLDS-equivalence; they are invariant
-- under the strict-isomorphism (bijective relabeling) special case
-- considered here.
--
-- Each property generates a random valid finite category, builds a
-- bijective span witness, transports the model along the span, and
-- checks that the satisfaction of every atomic predicate is preserved
-- (and that the transported model is itself valid).  A negative test
-- ensures malformed spans are rejected by 'validSpan'.
module Properties
  ( runInvarianceTests
  ) where

import qualified Data.Map.Strict as M
import Data.List (nub)
import System.Exit (exitFailure)

import FOLDS
import Test.QuickCheck
  ( Property
  , Gen
  , Arbitrary(arbitrary)
  , (===)
  , (.&&.)
  , (==>)
  , forAll
  , choose
  , elements
  , listOf
  , property
  , quickCheckResult
  , quickCheckWithResult
  , Result(Success)
  , stdArgs
  , Args(maxSuccess)
  , counterexample
  )

-- | A "small" finite category, generated with small object/arrow counts.
-- Built so 'validModel' returns True.
newtype SmallCat = SmallCat { runSmallCat :: Model } deriving (Show)

instance Arbitrary SmallCat where
  arbitrary = do
    nObj <- choose (1, 3) :: Gen Int
    let objs = [0 .. nObj - 1]
    -- Always include identity for each object.
    let identityArrs = [(i, i, i) | i <- objs]      -- arrow id = obj id
    -- Optionally add a few non-identity arrows between distinct objects.
    nNonId <- choose (0, 3) :: Gen Int
    nonId <- mapM (genNonIdArrow objs) [nObj .. nObj + nNonId - 1]
    let arrs = identityArrs ++ nonId
        arrIds = [i | (i,_,_) <- arrs]
    -- Identity assertions: every identity arrow.
    let ids = objs
    -- Equality assertions: the diagonal of parallel pairs.
    let eqs = [(a,a) | a <- arrIds]
    -- Composition triples: id * id = id, plus id * f = f and f * id = f
    -- for each non-identity f.  Convention (g,h,k):  g . h = k.
    let compIdId  = [(i,i,i) | i <- objs]
        compFId   = [(i, srcA, i)
                    | (i,srcA,_) <- nonId]                 -- f . id_dom = f
        compIdF   = [(tgtA, i, i)
                    | (i,_,tgtA) <- nonId]                 -- id_cod . f = f
        ts        = compIdId ++ compFId ++ compIdF
    pure $ SmallCat Model
      { modObj = objs
      , modArr = arrs
      , modT   = ts
      , modI   = ids
      , modE   = eqs
      }

genNonIdArrow :: [Int] -> Int -> Gen (Int, Int, Int)
genNonIdArrow objs newId = do
  s <- elements objs
  t <- elements objs
  pure (newId, s, t)

-- | Property: every generated SmallCat satisfies validModel.
prop_genValid :: SmallCat -> Property
prop_genValid (SmallCat m) =
  counterexample ("invalid generated model: " ++ show m) $
  validModel m === True

-- | Generator for a bijective span witness on a given valid model.  The
-- generated span has a NON-identity 'from' leg: P-keys are randomly
-- offset and permuted, so 'spanRenameMaps' must compose 'to . inverse from'
-- non-trivially.  This is round 3 issue (3): the previous generator made
-- 'from' the identity, masking that bug in 'proof_invarianceUnderSpan'.
genSpanFor :: Model -> Gen VerySurjective
genSpanFor m = do
  let objs = modObj m
      arrs = [i | (i,_,_) <- modArr m]
      nO   = length objs
      nA   = length arrs
  oOffP <- choose (5000, 5999) :: Gen Int
  oOffN <- choose (1000, 1999) :: Gen Int
  aOffP <- choose (7000, 7999) :: Gen Int
  aOffN <- choose (3000, 3999) :: Gen Int
  -- P-side keys, distinct from M ids:
  let pObjKeys = take nO [oOffP ..]
      pArrKeys = take nA [aOffP ..]
  -- Random bijections P -> M and P -> N.
  oPermM <- shuffle' objs
  aPermM <- shuffle' arrs
  oPermN <- shuffle' (map (+ oOffN) objs)
  aPermN <- shuffle' (map (+ aOffN) arrs)
  let fromO = zip pObjKeys oPermM
      fromA = zip pArrKeys aPermM
      toO   = zip pObjKeys oPermN
      toA   = zip pArrKeys aPermN
  pure VerySurjective { fromObj = fromO, fromArr = fromA
                      , toObj   = toO,   toArr   = toA }

shuffle' :: [a] -> Gen [a]
shuffle' [] = pure []
shuffle' xs = do
  i <- choose (0, length xs - 1)
  case splitAt i xs of
    (lhs, x:rhs) -> do
      rest <- shuffle' (lhs ++ rhs)
      pure (x : rest)
    _ -> pure xs

-- | Build the M->N renaming maps from a span (composition of inverse from
-- with to leg, via 'spanRenameMaps').
spanMapsM :: VerySurjective -> Maybe (M.Map Int Int, M.Map Int Int)
spanMapsM = spanRenameMaps

-- | Atomic-predicate transport along the M->N renaming (the 'aMap'
-- component of 'spanRenameMaps').
transportAtomicI :: M.Map Int Int -> [Int] -> [Int]
transportAtomicI aMap = map (aMap M.!)

transportAtomicT :: M.Map Int Int -> [(Int,Int,Int)] -> [(Int,Int,Int)]
transportAtomicT aMap = map (\(g,h,k) -> (aMap M.! g, aMap M.! h, aMap M.! k))

transportAtomicE :: M.Map Int Int -> [(Int,Int)] -> [(Int,Int)]
transportAtomicE aMap = map (\(f,g) -> (aMap M.! f, aMap M.! g))

-- | Property: a generated valid model transported along a fresh bijective
-- span yields a valid model whose I/T/E sets equal the transported
-- I/T/E sets of the original.  Uses the actual M->N renaming from
-- 'spanRenameMaps' (= to . inverse from), not just the to-leg.
prop_atomicTransport :: SmallCat -> Property
prop_atomicTransport (SmallCat m) =
  validModel m ==>
  forAll (genSpanFor m) $ \s ->
    case spanMapsM s of
      Nothing -> counterexample "spanRenameMaps failed" (property False)
      Just (oMap, aMap) ->
        case transportModel oMap aMap m of
          Nothing -> counterexample "transportModel returned Nothing"
                                    (property False)
          Just m' ->
            counterexample ("span: " ++ show s ++ "\nm':" ++ show m') $
            (validModel m' === True)
            .&&. setEq (modI m') (transportAtomicI aMap (modI m))
            .&&. setEq (modT m') (transportAtomicT aMap (modT m))
            .&&. setEq (modE m') (transportAtomicE aMap (modE m))

setEq :: (Eq a, Show a) => [a] -> [a] -> Property
setEq xs ys =
  counterexample ("setEq xs=" ++ show xs ++ " ys=" ++ show ys) $
  property (all (`elem` ys) xs && all (`elem` xs) ys)

-- | Property: a span built by our generator passes both validSpan and
-- validSpanFrom (the from-leg surjects onto the source model).
prop_genSpanValid :: SmallCat -> Property
prop_genSpanValid (SmallCat m) =
  validModel m ==>
  forAll (genSpanFor m) $ \s ->
    counterexample ("invalid span: " ++ show s) $
    (validSpan s === True) .&&. (validSpanFrom m s === True)

-- | Negative property: a span with duplicated keys is rejected by validSpan.
prop_malformedSpanRejected :: Property
prop_malformedSpanRejected =
  let bad = VerySurjective
              { fromObj = [(0,10),(0,11)]   -- duplicate domain key 0
              , fromArr = [(0,20)]
              , toObj   = [(0,30),(1,31)]
              , toArr   = [(0,40)]
              }
  in validSpan bad === False

-- | Negative property: an 'I' assertion on a non-loop arrow is rejected
-- by 'validModel'.
prop_invalidIRejected :: Property
prop_invalidIRejected =
  let m = Model
            { modObj = [0,1]
            , modArr = [(0,0,0),(1,1,1),(2,0,1)]   -- arrow 2: 0 -> 1
            , modT   = []
            , modI   = [2]                          -- bogus: 2 is not a loop
            , modE   = []
            }
  in validModel m === False

-- | Negative property: a 'T' triple that is not composable is rejected.
prop_invalidTRejected :: Property
prop_invalidTRejected =
  let m = Model
            { modObj = [0,1,2]
            , modArr = [(0,0,0),(1,1,1),(2,2,2),(10,0,1),(11,1,2)]
            , modT   = [(11,10,99)]    -- 99 is not an arrow id
            , modI   = [0,1,2]
            , modE   = []
            }
  in validModel m === False

-- | Negative property: a non-parallel 'E' pair is rejected.
prop_invalidERejected :: Property
prop_invalidERejected =
  let m = Model
            { modObj = [0,1]
            , modArr = [(0,0,0),(1,1,1),(2,0,1),(3,1,0)]
            , modT   = []
            , modI   = [0,1]
            , modE   = [(2,3)]   -- 2 : 0->1 is not parallel to 3 : 1->0
            }
  in validModel m === False

-- | Negative property: a span whose 'from' leg lands outside m is rejected
-- by 'validSpanFrom'.
prop_badFromLegRejected :: SmallCat -> Property
prop_badFromLegRejected (SmallCat m) =
  validModel m ==>
  let bogusFromObj = [(p, 99999) | (p,_) <- zip [0..] (modObj m)]
      bogusFromArr = [(p, 99999) | (p,_) <- zip [0..]
                                            [i | (i,_,_) <- modArr m]]
      s = VerySurjective
            { fromObj = bogusFromObj   -- maps into nonsense, not into m
            , fromArr = bogusFromArr
            , toObj   = zip (map fst bogusFromObj) (modObj m)
            , toArr   = zip (map fst bogusFromArr)
                            [i | (i,_,_) <- modArr m]
            }
  in validSpanFrom m s === False

-- | Property: a generated span between m and its transport satisfies
-- 'validSpanBetween' (the strict version that also checks transported
-- I/T/E sets agree with n).
prop_validSpanBetween :: SmallCat -> Property
prop_validSpanBetween (SmallCat m) =
  validModel m ==>
  forAll (genSpanFor m) $ \s ->
    case spanMapsM s of
      Nothing -> counterexample "spanMaps failed" (property False)
      Just (oMap, aMap) ->
        case transportModel oMap aMap m of
          Nothing -> counterexample "transport failed" (property False)
          Just n  -> validSpanBetween m s n === True

-- | Negative property: a model claiming to be a category but missing a
-- required composite (or an identity-law triple) is rejected by
-- 'validCategoryModel' even though it passes 'validModel'.
prop_missingCompositeRejected :: Property
prop_missingCompositeRejected =
  let m = Model
            { modObj = [0,1]
            , modArr = [(0,0,0),(1,1,1),(2,0,1)]
            , modT   = [(0,0,0),(1,1,1)]   -- missing id_1 . f = f and f . id_0 = f
            , modI   = [0,1]
            , modE   = [(0,0),(1,1),(2,2)]
            }
  in validModel m === True .&&. validCategoryModel m === False

-- | Property: identity bijections form a valid span and transportModel is id.
prop_identitySpanIsId :: SmallCat -> Property
prop_identitySpanIsId (SmallCat m) =
  validModel m ==>
  let identityO = M.fromList (zip (modObj m) (modObj m))
      identityA = M.fromList (zip (arrIds m) (arrIds m))
      s = VerySurjective
            { fromObj = M.toList identityO, fromArr = M.toList identityA
            , toObj   = M.toList identityO, toArr   = M.toList identityA }
  in case (spanMapsM s, transportModel identityO identityA m) of
       (Just (oMap, aMap), Just m') ->
            (validSpan s === True)
            .&&. (oMap === identityO)
            .&&. (aMap === identityA)
            .&&. (m' === m)
       _ -> counterexample "identity span failed" (property False)
  where
    arrIds mm = [i | (i,_,_) <- modArr mm]

-- | Property: composition of two relabelings agrees with the single
-- relabeling by the composite bijection.
prop_transportComposes :: SmallCat -> Property
prop_transportComposes (SmallCat m) =
  validModel m ==>
  forAll (genSpanFor m) $ \s1 ->
    case spanMapsM s1 of
      Nothing -> counterexample "spanMaps1 failed" (property False)
      Just (o1, a1) -> case transportModel o1 a1 m of
        Nothing -> counterexample "step1 failed" (property False)
        Just m1 -> forAll (genSpanFor m1) $ \s2 ->
          case spanMapsM s2 of
            Nothing -> counterexample "spanMaps2 failed" (property False)
            Just (o2, a2) ->
              let oComp = M.compose o2 o1
                  aComp = M.compose a2 a1
              in case (transportModel o2 a2 m1, transportModel oComp aComp m) of
                   (Just left, Just right) ->
                     counterexample ("left: " ++ show left
                                     ++ "\nright: " ++ show right) $
                     property (sameModel left right)
                   _ -> counterexample "step2 failed" (property False)
  where
    sameModel a b =
      sortedTuples (modArr a) == sortedTuples (modArr b)
      && nub (modObj a) == nub (modObj b)
      && sortedTuples3 (modT a) == sortedTuples3 (modT b)
      && nub (modI a) == nub (modI b)
      && sortedTuples (mapPair (modE a)) == sortedTuples (mapPair (modE b))
    mapPair = map (\(x,y) -> (x,y,0))   -- pad to triple for re-use
    sortedTuples = nub
    sortedTuples3 = nub

-- | Run the QuickCheck battery and exit non-zero on any failure.
runInvarianceTests :: IO ()
runInvarianceTests = do
  let args = stdArgs { maxSuccess = 200 }
      runOne label rIO = do
        r <- rIO
        case r of
          Success {} -> putStrLn ("  PASS  " ++ label) >> pure True
          _          -> putStrLn ("  FAIL  " ++ label) >> pure False
  results <- sequence
    [ runOne "generated SmallCat is a valid FOLDS model"
        (quickCheckWithResult args prop_genValid)
    , runOne "atomic predicates I/T/E transport across span"
        (quickCheckWithResult args prop_atomicTransport)
    , runOne "generated span passes validSpan and validSpanFrom"
        (quickCheckWithResult args prop_genSpanValid)
    , runOne "malformed span is rejected"
        (quickCheckResult prop_malformedSpanRejected)
    , runOne "identity span produces identity transport"
        (quickCheckWithResult args prop_identitySpanIsId)
    , runOne "transport composes (functoriality)"
        (quickCheckWithResult args prop_transportComposes)
    , runOne "invalid I assertion (non-loop) rejected"
        (quickCheckResult prop_invalidIRejected)
    , runOne "invalid T triple (non-composable) rejected"
        (quickCheckResult prop_invalidTRejected)
    , runOne "non-parallel E pair rejected"
        (quickCheckResult prop_invalidERejected)
    , runOne "span with bad 'from' leg rejected by validSpanFrom"
        (quickCheckWithResult args prop_badFromLegRejected)
    , runOne "model missing required composite rejected by validCategoryModel"
        (quickCheckResult prop_missingCompositeRejected)
    , runOne "validSpanBetween holds on generated span and its transport"
        (quickCheckWithResult args prop_validSpanBetween)
    ]
  if and results
    then putStrLn "  All invariance tests passed."
    else do putStrLn "  Some invariance tests FAILED."
            exitFailure

-- Suppress unused import warnings for utilities kept for future expansion.
_unused :: ()
_unused = let _ = forAll (pure ()) (\_ -> True)
              _ = listOf (pure ())
              _ = nub [0 :: Int]
          in ()
