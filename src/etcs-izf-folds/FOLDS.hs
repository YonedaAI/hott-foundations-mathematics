{-# LANGUAGE GADTs #-}
{-# LANGUAGE StandaloneDeriving #-}
-- | Toy FOLDS signature (Makkai 1995) for categories, plus a runnable check
-- that very-surjective spans transport atomic predicates between models.
--
-- Tuple conventions used throughout:
--   * Arrows are stored as (arrowId, srcObj, tgtObj).
--   * Composition triples are (g, h, k) meaning  g . h = k,  which forces
--     dom k = dom h, cod h = dom g, cod k = cod g.
--   * Identity assertions are arrowIds I(a) where  src a == tgt a.
--   * Equality assertions E(f,g) are parallel pairs (same src and tgt).
module FOLDS
  ( Sort(..)
  , Sym(..)
  , Sig(..)
  , catSig
  , Model(..)
  , validModel
  , validCategoryModel
  , VerySurjective(..)
  , validSpan
  , validSpanFrom
  , validSpanBetween
  , spanRenameMaps
  , transportModel
  , demoSignature
  ) where

import Data.List (nub, sort)
import qualified Data.Map.Strict as M

-- | Sorts of a FOLDS signature: kinds (data) or relations (truth-valued).
data Sort = K String | R String
  deriving (Eq, Ord, Show)

-- | A non-trivial morphism in the signature poset.
data Sym = Sym { symName :: String
               , symFrom :: Sort
               , symTo   :: Sort
               } deriving (Eq, Show)

-- | A FOLDS signature.
data Sig = Sig { sorts :: [Sort], syms :: [Sym] }
  deriving (Eq, Show)

-- | Signature for the FOLDS theory of categories (Example 4.2 of paper).
catSig :: Sig
catSig = Sig
  { sorts =
      [ K "O"            -- objects
      , K "A"            -- arrows
      , R "T"            -- composite triple
      , R "I"            -- identity arrow
      , R "E"            -- arrow equality (parallel)
      ]
  , syms =
      [ Sym "src" (K "A") (K "O")
      , Sym "tgt" (K "A") (K "O")
      , Sym "tg"  (R "T") (K "A")
      , Sym "th"  (R "T") (K "A")
      , Sym "tk"  (R "T") (K "A")
      , Sym "ia"  (R "I") (K "A")
      , Sym "ef"  (R "E") (K "A")
      , Sym "eg"  (R "E") (K "A")
      ]
  }

-- | A model of a FOLDS signature: an interpretation function on each sort.
--   * modArr stores  (arrowId, srcObj, tgtObj).
--   * modT   stores  (g, h, k) meaning  g . h = k.
--   * modI   stores  identity-arrow ids.
--   * modE   stores  parallel-pair (a,b).
data Model = Model
  { modObj  :: [Int]
  , modArr  :: [(Int, Int, Int)]
  , modT    :: [(Int, Int, Int)]
  , modI    :: [Int]
  , modE    :: [(Int, Int)]
  } deriving (Eq, Show)

-- | Lookup the (src, tgt) of an arrow id.
arrEnds :: Model -> Int -> Maybe (Int, Int)
arrEnds m a =
  case [(s,t) | (i,s,t) <- modArr m, i == a] of
    (st:_) -> Just st
    []     -> Nothing

-- | Validate that a Model satisfies the FOLDS dependent typing for catSig.
--
-- This is the *signature-typing* layer (it is sometimes useful to call this
-- @validSignatureTyping@, but we keep the historical name).  A Model is
-- 'validModel' iff:
--   * object ids are distinct,
--   * arrow ids are distinct and their endpoints are objects,
--   * every T(g,h,k) is composable: src g == tgt h, src k == src h,
--     tgt k == tgt g,
--   * every I(a) has src a == tgt a,
--   * every E(f,g) is parallel: src f == src g and tgt f == tgt g.
--
-- For the *category* axioms (totality + uniqueness of composition,
-- identity laws, associativity, E = equality) see 'validCategoryModel'.
validModel :: Model -> Bool
validModel m = and
  [ length (nub (modObj m)) == length (modObj m)
  , let aids = [i | (i,_,_) <- modArr m]
    in length (nub aids) == length aids
  , all (\(_,s,t) -> s `elem` modObj m && t `elem` modObj m) (modArr m)
  , all (validT m)  (modT m)
  , all (validI m)  (modI m)
  , all (validE m)  (modE m)
  ]

validT :: Model -> (Int,Int,Int) -> Bool
validT m (g,h,k) = case (arrEnds m g, arrEnds m h, arrEnds m k) of
  (Just (sg,tg), Just (sh,th), Just (sk,tk)) ->
       sg == th     -- composable: src g = tgt h
    && sk == sh     -- domain of k = domain of h
    && tk == tg     -- codomain of k = codomain of g
  _ -> False

validI :: Model -> Int -> Bool
validI m a = case arrEnds m a of
  Just (s,t) -> s == t
  Nothing    -> False

validE :: Model -> (Int,Int) -> Bool
validE m (f,g) = case (arrEnds m f, arrEnds m g) of
  (Just (sf,tf), Just (sg,tg)) -> sf == sg && tf == tg
  _ -> False

-- | A very-surjective span between two models.
--
-- A span M  <==  P  ==>  N consists of relabelings (bijections in the
-- atomic, isomorphism case) on every sort.  Each map is recorded as an
-- association list domain -> codomain.
data VerySurjective = VerySurjective
  { fromObj :: [(Int, Int)]   -- P-objects -> M-objects
  , fromArr :: [(Int, Int)]   -- P-arrows  -> M-arrows
  , toObj   :: [(Int, Int)]   -- P-objects -> N-objects
  , toArr   :: [(Int, Int)]   -- P-arrows  -> N-arrows
  } deriving (Eq, Show)

-- | Surjective-on-keys check: an association list is a total bijection
-- on its declared domain (no duplicate keys, no duplicate values).
isBijection :: (Eq a, Eq b) => [(a,b)] -> Bool
isBijection xs =
  length (nub (map fst xs)) == length xs
  && length (nub (map snd xs)) == length xs

-- | A span is valid iff:
--   * each leg is a bijection on its declared domain;
--   * the two legs share the same domain (P-side) cardinality;
--   * P's object/arrow keys agree on both sides.
validSpan :: VerySurjective -> Bool
validSpan s = and
  [ isBijection (fromObj s)
  , isBijection (fromArr s)
  , isBijection (toObj s)
  , isBijection (toArr s)
  , sort (map fst (fromObj s)) == sort (map fst (toObj s))
  , sort (map fst (fromArr s)) == sort (map fst (toArr s))
  , not (null (fromObj s))
  ]

-- | Verify that the 'fromObj'/'fromArr' leg of the span actually surjects
-- onto the source model 'm'.  This rejects spans whose left leg lands
-- outside 'm'.
validSpanFrom :: Model -> VerySurjective -> Bool
validSpanFrom m s =
     validSpan s
  && sort (map snd (fromObj s)) == sort (modObj m)
  && sort (map snd (fromArr s)) == sort [i | (i,_,_) <- modArr m]

-- | Verify that 'm' and 'n' are connected by a valid span: the from-leg
-- surjects onto 'm', the to-leg surjects onto 'n', and the transported
-- atomic predicates I/T/E agree set-theoretically with those of 'n'.
validSpanBetween :: Model -> VerySurjective -> Model -> Bool
validSpanBetween m s n =
     validModel m
  && validModel n
  && validSpanFrom m s
  && sort (map snd (toObj s)) == sort (modObj n)
  && sort (map snd (toArr s)) == sort [i | (i,_,_) <- modArr n]
  && case spanRenameMaps s of
       Nothing -> False
       Just (_oMap, aMap) ->
            sortedSet (map (aMap M.!) (modI m)) == sortedSet (modI n)
         && sortedSet (mapTriples aMap (modT m)) == sortedSet (modT n)
         && sortedSet (mapPairs   aMap (modE m)) == sortedSet (modE n)
  where
    sortedSet :: (Ord a) => [a] -> [a]
    sortedSet = sort . nub
    mapTriples mp = map (\(g,h,k) -> (mp M.! g, mp M.! h, mp M.! k))
    mapPairs   mp = map (\(f,g)   -> (mp M.! f, mp M.! g))

-- | Compose the span legs to produce the actual M -> N renaming maps:
--     M -> P (= inverse of fromObj/fromArr) -> N (= toObj/toArr).
-- Returns Nothing if either the from-legs or composition is not well
-- defined (e.g. duplicate keys or values).
spanRenameMaps :: VerySurjective -> Maybe (M.Map Int Int, M.Map Int Int)
spanRenameMaps s = do
  oInv <- invertAssoc (fromObj s)     -- M-key -> P-key
  aInv <- invertAssoc (fromArr s)
  let oMap = M.fromList [ (k, mp v) | (k,v) <- M.toList oInv
                        , let mp = (M.fromList (toObj s) M.!) ]
      aMap = M.fromList [ (k, mp v) | (k,v) <- M.toList aInv
                        , let mp = (M.fromList (toArr s) M.!) ]
  pure (oMap, aMap)
  where
    invertAssoc :: [(Int,Int)] -> Maybe (M.Map Int Int)
    invertAssoc xs =
      let inv = M.fromList [(v,k) | (k,v) <- xs]
      in if M.size inv == length xs then Just inv else Nothing

-- | Stronger predicate than 'validModel': in addition to FOLDS dependent
-- typing, enforce
--
--   1. every object has an identity arrow (recorded in 'modI'),
--   2. every triple in 'modT' has a unique composite k (functionality of
--      composition) and the relation is closed under equality,
--   3. composition with identities is the identity (left and right unit
--      laws),
--   4. composition is associative whenever both nestings exist,
--   5. 'modE' is exactly the diagonal {(a,a) | a in arrows}.
validCategoryModel :: Model -> Bool
validCategoryModel m = and
  [ validModel m
  , all hasIdentity (modObj m)
  , all totalComposable composablePairs       -- Issue 1: totality + functionality
  , all leftUnit  arrIds
  , all rightUnit arrIds
  , all associative associativeTriples        -- Issue 2: corrected wiring
  , sort (modE m) == sort [(a,a) | a <- arrIds]
  ]
  where
    arrIds = [i | (i,_,_) <- modArr m]
    ts     = modT m

    hasIdentity o =
      let candidates = [a | a <- modI m, arrEnds m a == Just (o,o)]
      in not (null candidates)

    -- All (g,h) pairs that ought to compose: src g == tgt h.
    composablePairs =
      [ (g,h)
      | g <- arrIds
      , h <- arrIds
      , Just (sg,_) <- [arrEnds m g]
      , Just (_,th) <- [arrEnds m h]
      , sg == th
      ]

    -- Totality + functionality of composition:  for every composable pair
    -- (g,h) there is exactly one k with (g,h,k) in modT.
    totalComposable (g,h) =
      length [k | (g',h',k) <- ts, g == g', h == h'] == 1

    -- For arrow f: id_cod . f = f and f . id_dom = f.
    leftUnit a = case arrEnds m a of
      Just (_, t) -> any (\i -> arrEnds m i == Just (t,t)
                                && (i,a,a) `elem` ts) (modI m)
      Nothing -> False
    rightUnit a = case arrEnds m a of
      Just (s, _) -> any (\i -> arrEnds m i == Just (s,s)
                                && (a,i,a) `elem` ts) (modI m)
      Nothing -> False

    -- Triples (g, h, i) such that both (g,h,_) and (h,i,_) exist in ts,
    -- with the corresponding composites gh and hi.
    associativeTriples =
      [ (g, h, i, gh, hi)
      | (g, h,  gh) <- ts
      , (h', i, hi) <- ts
      , h == h'
      ]

    -- Issue 2 fix: (g . h) . i = g . (h . i) when both nestings exist.
    associative (_g, _h, i, gh, hi) =
      let lhs = [x | (a,b,x) <- ts, a == gh, b == i]
          rhs = [y | (a,b,y) <- ts, a == _g, b == hi]
      in lhs == rhs

-- | Transport a Model along a bijective span leg (objBij, arrBij).
-- Given a model M and bijections o : modObj M -> obj', a : arrIds M -> arr',
-- produce the model obtained by renaming.  The transported model is valid
-- iff M is valid.
transportModel
  :: M.Map Int Int     -- object renaming
  -> M.Map Int Int     -- arrow renaming
  -> Model
  -> Maybe Model
transportModel obj arr m
  | all (`M.member` obj) (modObj m)
  , all (\(i,s,t) -> M.member i arr && M.member s obj && M.member t obj)
        (modArr m)
  , all (\(g,h,k) -> all (`M.member` arr) [g,h,k]) (modT m)
  , all (`M.member` arr) (modI m)
  , all (\(f,g) -> M.member f arr && M.member g arr) (modE m)
  = Just Model
      { modObj = map (obj M.!) (modObj m)
      , modArr = map (\(i,s,t) -> (arr M.! i, obj M.! s, obj M.! t)) (modArr m)
      , modT   = map (\(g,h,k) -> (arr M.! g, arr M.! h, arr M.! k))  (modT m)
      , modI   = map (arr M.!) (modI m)
      , modE   = map (\(f,g) -> (arr M.! f, arr M.! g)) (modE m)
      }
  | otherwise = Nothing

-- | Quick textual summary of the categories signature.
demoSignature :: IO ()
demoSignature = do
  putStrLn "  Kinds:    O (objects), A (arrows)"
  putStrLn "  Symbols:  src, tgt : A -> O"
  putStrLn "  Relations: T (composition), I (identity), E (equality)"
  let s = catSig
  putStrLn $ "  total sorts: " ++ show (length (sorts s))
  putStrLn $ "  total syms:  " ++ show (length (syms s))
  putStrLn $ "  unique levels: " ++ show (length (nub (map symFrom (syms s))))
