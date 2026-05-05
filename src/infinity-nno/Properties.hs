{-# LANGUAGE ScopedTypeVariables #-}

-- |
-- Module      : Properties
-- Description : QuickCheck properties for the NNO universal property.
--
-- The properties here mirror Theorem 3.2 of Paper III (existence and
-- uniqueness of the recursor) and Lemma 2.5 (Lambek's theorem). We verify
-- them on representative pointed dynamical systems both as deterministic
-- checks ('runChecks') and as real QuickCheck properties ('runQuickChecks').
--
-- Uniqueness is encoded as a true conditional property: any 'h' that
-- satisfies the universal-property premise on a finite prefix
-- @0..n@ must coincide with 'rec' on that prefix. We feed in 'Fun'-generated
-- candidate functions and explicit negative controls so that wrong
-- candidates get rejected by the premise rather than by special-casing.
module Properties
  ( -- * Universal property
    prop_rec_zero
  , prop_rec_step
  , prop_rec_unique
    -- * Lambek
  , prop_lambek
    -- * Canonical iso (universal-up-to-iso) properties
  , prop_canonical_iso_id
  , prop_unique_endo
    -- * Standard examples
  , addPS
  , mulPS
  , factPS
    -- * Test runners
  , runChecks
  , runQuickChecks
  ) where

import NNO
import Numeric.Natural (Natural)
import Test.QuickCheck
  ( Property, Args(..), stdArgs, quickCheckWithResult, isSuccess
  , (===), (.&&.), counterexample, forAll, choose, Fun, applyFun
  , property
  )

-- | Pointed dynamical system implementing addition by 'k'.
addPS :: Integer -> PtEndo Integer
addPS k = PtEndo k (+ 1) -- iterating succ gives n + k starting from k

-- | Pointed dynamical system implementing multiplication by 'k'.
-- Carrier is Integer, basepoint 0, step is "+ k". Iterating 'n' times
-- produces 'n * k'.
mulPS :: Integer -> PtEndo Integer
mulPS k = PtEndo 0 (+ k)

-- | Pointed dynamical system whose recursor produces factorial.
-- Carrier is (Integer, Integer) where first component is "running n"
-- and second is "running n!". This is a concrete instance of
-- primitive-recursion-from-iteration (Paper III Prop 3.4).
factPS :: PtEndo (Integer, Integer)
factPS = PtEndo (0, 1) step
  where
    step (n, fn) = (n + 1, (n + 1) * fn)

-- | rec _ 0 = x0
prop_rec_zero :: forall a. Eq a => PtEndo a -> Bool
prop_rec_zero pe = rec pe 0 == ptBase pe

-- | rec _ (succ n) = f (rec _ n) for any non-negative n. Total on 'Nat'.
prop_rec_step :: forall a. Eq a => PtEndo a -> Nat -> Bool
prop_rec_step pe n = rec pe (n + 1) == ptStep pe (rec pe n)

-- | Uniqueness, properly stated as a true material implication:
-- if 'h' satisfies the universal-property premise on the prefix @0..n@ —
-- that is, @h 0 = x0@ and @h (k+1) = f (h k)@ for all @k < n@ — then
-- 'h' agrees with 'rec' on @0..n@. The property holds whenever
-- @not premise || conclusion@. We use this rather than QuickCheck's
-- '==>' so that test cases that fail the premise are considered passing
-- (vacuously) rather than discarded — important for negative controls
-- where every random candidate fails the premise.
prop_rec_unique
  :: forall a. (Eq a, Show a)
  => PtEndo a
  -> (Nat -> a) -- ^ candidate morphism
  -> Nat        -- ^ depth of prefix
  -> Property
prop_rec_unique pe h n =
  let premiseHolds =
        h 0 == ptBase pe
        && all (\k -> h (k + 1) == ptStep pe (h k)) [0 .. n]
      conclusion =
        all (\k -> h k == rec pe k) [0 .. n]
  in counterexample
       ("h prefix = " ++ show [h k | k <- [0 .. n]] ++
        ", rec prefix = " ++ show [rec pe k | k <- [0 .. n]] ++
        ", premiseHolds = " ++ show premiseHolds)
       ((not premiseHolds || conclusion) === True)

-- | Lambek's iso roundtrip. Total on 'Nat'.
prop_lambek :: Nat -> Bool
prop_lambek = lambekIso

-- | Run a small suite of property checks; returns 'True' iff all pass.
runChecks :: Bool
runChecks = and
  [ all prop_rec_zero            [addPS 0, addPS 5]
  , all (\pe -> all (prop_rec_step pe) [0,1,2,3,4,5,10]) [addPS 0, addPS 5]
  , prop_rec_zero factPS
  , prop_rec_step factPS 4
  , all prop_lambek [0,1,2,3,4,5,10,100]
  ]

-- ---------------------------------------------------------------------------
-- QuickCheck properties (Theorem 3.2 + Lemma 2.5 + Prop 7.3 of Paper III)
-- ---------------------------------------------------------------------------

-- | Generator for moderate non-negative 'Nat' inputs.
nonNegNat :: (Nat -> Property) -> Property
nonNegNat k =
  forAll (choose (0, 200 :: Integer)) (\i -> k (fromInteger i))

-- | QuickCheck: 'rec _ 0 = x0' for the standard "+1" pointed dynamical
-- system at varying basepoints (Theorem 3.2 first equation).
qprop_rec_zero :: Integer -> Property
qprop_rec_zero x0 =
  let pe = PtEndo x0 (+ (1 :: Integer))
  in rec pe 0 === ptBase pe

-- | QuickCheck: 'rec _ (succ n) = f (rec _ n)' for the "+1" PS at varying
-- basepoints (Theorem 3.2 second equation).
qprop_rec_step :: Integer -> Property
qprop_rec_step x0 =
  let pe = PtEndo x0 (+ (1 :: Integer))
  in nonNegNat $ \n ->
       rec pe (n + 1) === ptStep pe (rec pe n)

-- | QuickCheck uniqueness over a randomly generated candidate function
-- @h@. The premise filters out most candidates, so we focus on a tractable
-- prefix of length @n+1@. Any 'h' that satisfies the premise must agree
-- with 'rec'.
qprop_rec_unique_random
  :: Integer
  -> Fun Natural Integer
  -> Property
qprop_rec_unique_random x0 hfun =
  let pe = PtEndo x0 ((+ 1) :: Integer -> Integer)
      h  = applyFun hfun
  in forAll (choose (0, 8 :: Integer)) $ \i ->
       prop_rec_unique pe h (fromInteger i)

-- | QuickCheck: closed-form uniqueness for the "+1" PS at varying basepoints.
-- The closed form @h n = x0 + fromIntegral n@ does satisfy the premise, so
-- this exercises the positive direction of the implication.
qprop_rec_unique_addPS :: Integer -> Property
qprop_rec_unique_addPS x0 =
  let pe = PtEndo x0 (+ (1 :: Integer))
      h n = x0 + toInteger n
  in nonNegNat $ \n -> prop_rec_unique pe h n

-- | QuickCheck: closed-form uniqueness for the "*k" PS — uniqueness of
-- the recursor on a multiplicative dynamical system.
qprop_rec_unique_mulPS :: Integer -> Property
qprop_rec_unique_mulPS k =
  let pe = mulPS k
      h n = toInteger n * k
  in nonNegNat $ \n -> prop_rec_unique pe h n

-- | QuickCheck: a wrong candidate (constant function) is correctly rejected
-- by the premise, so the implication is vacuously true. This is the
-- "negative control" requested in code review: it shows the premise is
-- doing the filtering, not a hand-coded special case.
qprop_rec_unique_constControl :: Integer -> Property
qprop_rec_unique_constControl x0 =
  let pe = PtEndo x0 ((+ 1) :: Integer -> Integer)
      h _ = x0 -- constant function: fails the step law for x0+1 != x0
  in nonNegNat $ \n -> prop_rec_unique pe h n

-- | QuickCheck: a shifted candidate (h n = x0 + fromIntegral n + 1) also
-- fails the premise (it disagrees on @h 0 = x0@) and so the implication
-- is vacuously true.
qprop_rec_unique_shiftedControl :: Integer -> Property
qprop_rec_unique_shiftedControl x0 =
  let pe = PtEndo x0 ((+ 1) :: Integer -> Integer)
      h n = x0 + toInteger n + 1
  in nonNegNat $ \n -> prop_rec_unique pe h n

-- | QuickCheck: Lambek's theorem (Lemma 2.5). The pair
-- ('nnoStructureMap', 'nnoStructureInv') is an iso on the NNO carrier.
qprop_lambek_roundtrip :: Property
qprop_lambek_roundtrip =
  nonNegNat $ \n -> nnoStructureMap (nnoStructureInv n) === n

-- | QuickCheck: the other Lambek roundtrip, on '1 + Nat'. Both
-- 'Nothing' and 'Just k' must survive the roundtrip. We use real
-- conjunction '(.&&.)' from QuickCheck.
qprop_lambek_roundtrip_inv :: Property
qprop_lambek_roundtrip_inv =
  let goNothing = nnoStructureInv (nnoStructureMap Nothing) === Nothing
      goJust    = nonNegNat $ \k ->
                    nnoStructureInv (nnoStructureMap (Just k)) === Just k
  in counterexample "Nothing leg" goNothing
       .&&. counterexample "Just leg" goJust

-- | QuickCheck: canonical iso between (Nat,0,succ) and itself is the
-- identity (Proposition 7.3 / Lemma 2.3 — rigidity).
prop_canonical_iso_id :: Property
prop_canonical_iso_id =
  let pe = PtEndo (0 :: Nat) (+ 1)
  in nonNegNat $ \n -> rec pe n === n

-- | QuickCheck: the only endomorphism of the NNO that respects zero and
-- succ is the identity (rigidity). Encoded as 'prop_rec_unique' with the
-- diagonal pointed system (Nat, 0, succ): any candidate satisfying the
-- premise must agree with 'rec', which on this PS is the identity.
prop_unique_endo :: Property
prop_unique_endo =
  let pe = PtEndo (0 :: Nat) (+ 1)
      h  = id :: Nat -> Nat
  in nonNegNat $ \n -> prop_rec_unique pe h n

-- | Additional rigidity test with a generated candidate. The generated
-- function rarely satisfies the premise, so this primarily exercises the
-- vacuous side, but it occasionally catches accidental matches.
qprop_rigidity_random :: Fun Natural Natural -> Property
qprop_rigidity_random hfun =
  let pe = PtEndo (0 :: Nat) (+ 1)
      h  = applyFun hfun
  in forAll (choose (0, 8 :: Integer)) $ \i ->
       prop_rec_unique pe h (fromInteger i)

-- | Run all QuickCheck properties. Returns 'True' iff all succeed.
runQuickChecks :: IO Bool
runQuickChecks = do
  let args = stdArgs { maxSuccess = 200, chatty = False }
      one :: String -> Property -> IO Bool
      one name p = do
        r <- quickCheckWithResult args p
        let ok = isSuccess r
        putStrLn $ "  [" ++ (if ok then "OK" else "FAIL") ++ "] " ++ name
        pure ok
  putStrLn "QuickCheck properties (Theorem 3.2, Lemma 2.5, Prop 7.3):"
  rs <- sequence
    [ one "qprop_rec_zero"               (forAll (choose (-50, 50)) qprop_rec_zero)
    , one "qprop_rec_step"               (forAll (choose (-50, 50)) qprop_rec_step)
    , one "qprop_rec_unique_addPS"       (forAll (choose (-50, 50)) qprop_rec_unique_addPS)
    , one "qprop_rec_unique_mulPS"       (forAll (choose (-50, 50)) qprop_rec_unique_mulPS)
    , one "qprop_rec_unique_random"         (forAll (choose (-25, 25 :: Integer)) (\x0 -> property (qprop_rec_unique_random x0)))
    , one "qprop_rigidity_random"           (property qprop_rigidity_random)
    , one "qprop_rec_unique_constControl"   (forAll (choose (-50, 50)) qprop_rec_unique_constControl)
    , one "qprop_rec_unique_shiftedControl" (forAll (choose (-50, 50)) qprop_rec_unique_shiftedControl)
    , one "qprop_lambek_roundtrip"          qprop_lambek_roundtrip
    , one "qprop_lambek_roundtrip_inv"      qprop_lambek_roundtrip_inv
    , one "prop_canonical_iso_id"           prop_canonical_iso_id
    , one "prop_unique_endo"                prop_unique_endo
    ]
  pure (and rs)
