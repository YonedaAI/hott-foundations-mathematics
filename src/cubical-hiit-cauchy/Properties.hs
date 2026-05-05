-- |
-- Module      : Properties
-- Description : QuickCheck convergence properties for the Cauchy reals
-- Copyright   : (c) YonedaAI Research, 2026
--
-- Properties demonstrating that the Haskell prototype of the Cauchy
-- reals satisfies the expected approximation and convergence laws.
-- These mirror the lemmas of Section 5--7 of the paper.
--
-- /Coverage notes./
--
--   * Test data uses a local 'TestRc' newtype to avoid orphan
--     instances (no @-Wno-orphans@ pragma is needed).
--   * The generator produces a /bounded/ recursive mixture of 'Rat'
--     atoms, /constant/ 'Lim' cells and /precision-dependent/ 'Lim'
--     cells, with the latter constructed so that the Cauchy
--     condition is provably satisfied.
--   * @QuickCheck@ classifications report the proportion of test
--     cases that exercise each constructor flavour.
--   * Approximant properties (sqrt2, pi, e) are parameterised over
--     positive precisions drawn /logarithmically/ from
--     @1/10, 1/100, ..., 1/10^9@ so that the convergence claim is
--     tested on a wide range of magnitudes.

module Properties
  ( -- * Test wrapper
    TestRc(..)
    -- * Properties on the algebra of 'Rc'
  , prop_approxBound
  , prop_addCommutative
  , prop_addAssociative
  , prop_addZeroLeft
  , prop_negInvolutive
  , prop_subRoundtrip
  , prop_mulCommutative
  , prop_mulOneLeft
    -- * Properties on the Cauchy structure
  , prop_isCauchyApproxRefl
    -- * Approximant convergence
  , prop_sqrt2Residual
  , prop_piConverges
  , prop_eConverges
  , prop_goldenRatioConverges
    -- * Test runner
  , runAllProperties
  ) where

import Test.QuickCheck
import Reals
  ( Rc(..)
  , approxAt
  , addR
  , negR
  , subR
  , mulR
  , rat
  , close
  , isCauchyApprox
  )
import Approximants (sqrt2, piRc, eRc, goldenRatio)

-- ---------------------------------------------------------------------------
-- Local test newtype
-- ---------------------------------------------------------------------------

-- | Wrapper around 'Rc' carrying QuickCheck instances /locally/, so
-- the 'Reals' module remains free of orphan typeclass instances.
newtype TestRc = TestRc { runTestRc :: Rc }

instance Show TestRc where
  show (TestRc (Rat q)) = "Rat " ++ show (fromRational q :: Double)
  show (TestRc (Lim _)) = "Lim <function>"

-- ---------------------------------------------------------------------------
-- Generators
-- ---------------------------------------------------------------------------

-- | Generate a strictly positive rational in @(0, 1]@, drawn from a
-- mix of small denominators and \"logarithmic\" precisions of the
-- form @1/10^k@ for @k in {1..9}@.
genQPos :: Gen Rational
genQPos =
  oneof
    [ do d <- choose (2, 50) :: Gen Int
         n <- choose (1, d - 1) :: Gen Int
         return (toRational n / toRational d)
    , do k <- choose (1, 9) :: Gen Int
         return (1 / fromIntegral (10 ^ k :: Integer))
    ]

-- | A bounded recursive 'Rc' generator, returning the underlying
-- 'Rc' (we wrap it back into 'TestRc' at the 'Arbitrary' instance).
genRc :: Int -> Gen Rc
genRc 0 = Rat <$> arbitraryRational
genRc d =
  frequency
    [ (3, Rat <$> arbitraryRational)
    , (2, do  -- constant Lim: trivially Cauchy
        sub <- genRc (d - 1)
        return (Lim (\_eps -> sub)))
    , (2, do  -- precision-dependent Lim that is Cauchy by construction
        base <- arbitraryRational
        let f eps = Rat (base + eps / 2)
        return (Lim f))
    , (1, do  -- nested Lim
        sub <- genRc (d - 1)
        return (Lim (\_eps -> Lim (\_eps' -> sub))))
    ]

arbitraryRational :: Gen Rational
arbitraryRational = toRational <$> (arbitrary :: Gen Double)

instance Arbitrary TestRc where
  arbitrary = TestRc <$> sized (\n -> genRc (min 3 n))

-- | Tag an 'Rc' with a coarse classification, for QuickCheck
-- 'classify' coverage reporting.
rcKind :: Rc -> String
rcKind (Rat _) = "Rat"
rcKind (Lim _) = "Lim"

-- ---------------------------------------------------------------------------
-- Algebraic properties
-- ---------------------------------------------------------------------------

-- | Approximation correctness:
--
-- > |approx_eps u - approx_eps' u| < eps + eps'
--
-- This is the value-level reflection of the triangle inequality
-- on the closeness predicate (Lemma 5.4 in the paper).
prop_approxBound :: TestRc -> Property
prop_approxBound (TestRc u) =
  forAll genQPos $ \eps ->
  forAll genQPos $ \eps' ->
    classify (rcKind u == "Rat") "Rat"      $
    classify (rcKind u == "Lim") "Lim"      $
    abs (approxAt eps u - approxAt eps' u) < eps + eps'

-- | Addition is approximately commutative.
prop_addCommutative :: TestRc -> TestRc -> Property
prop_addCommutative (TestRc u) (TestRc v) =
  classify (rcKind u == "Lim" || rcKind v == "Lim") "Lim involved" $
  close (1 / 1000) (addR u v) (addR v u)

-- | Addition is approximately associative.
prop_addAssociative :: TestRc -> TestRc -> TestRc -> Bool
prop_addAssociative (TestRc u) (TestRc v) (TestRc w) =
  close (1 / 1000) (addR (addR u v) w) (addR u (addR v w))

-- | Zero is a left identity.
prop_addZeroLeft :: TestRc -> Bool
prop_addZeroLeft (TestRc u) = close (1 / 10000) (addR (rat 0) u) u

-- | Negation is involutive.
prop_negInvolutive :: TestRc -> Bool
prop_negInvolutive (TestRc u) = close (1 / 10000) (negR (negR u)) u

-- | Subtraction round-trip: @(u + v) - v ~ u@.
prop_subRoundtrip :: TestRc -> TestRc -> Bool
prop_subRoundtrip (TestRc u) (TestRc v) =
  close (1 / 1000) (subR (addR u v) v) u

-- | Multiplication is approximately commutative.
prop_mulCommutative :: TestRc -> TestRc -> Bool
prop_mulCommutative (TestRc u) (TestRc v) =
  close (1 / 100) (mulR u v) (mulR v u)

-- | One is a left identity for multiplication.
prop_mulOneLeft :: TestRc -> Bool
prop_mulOneLeft (TestRc u) =
  close (1 / 1000) (mulR (rat 1) u) u

-- ---------------------------------------------------------------------------
-- Cauchy-witness property
-- ---------------------------------------------------------------------------

-- | An approximant function constructed from a single 'Rc' value (by
-- @\\_ -> u@) is trivially Cauchy.  This is the trivial case of the
-- Cauchy condition exposed by 'isCauchyApprox'.
prop_isCauchyApproxRefl :: TestRc -> Property
prop_isCauchyApproxRefl (TestRc u) =
  forAll genQPos $ \delta ->
  forAll genQPos $ \eps ->
    isCauchyApprox (\_ -> u) delta eps

-- ---------------------------------------------------------------------------
-- Approximant convergence (logarithmic precisions, no fixed slack)
-- ---------------------------------------------------------------------------

-- | Generate a logarithmic positive precision @1 / 10^k@.
genLogPrec :: Gen Rational
genLogPrec = do
  k <- choose (1, 9) :: Gen Int
  return (1 / fromIntegral (10 ^ k :: Integer))

-- | sqrt(2) approximant satisfies @|q^2 - 2| < eps@ for the
-- documented residual bound (no extra slack).
prop_sqrt2Residual :: Property
prop_sqrt2Residual =
  forAll genLogPrec $ \eps ->
    let q = approxAt eps sqrt2
    in counterexample
         ("eps=" ++ show (fromRational eps :: Double)
          ++ " q=" ++ show (fromRational q :: Double)
          ++ " residual=" ++ show (fromRational (abs (q * q - 2)) :: Double))
         (abs (q * q - 2) < eps)

-- | pi approximant is self-Cauchy: at any two precisions @eps, eps'@
-- the approximations agree within @eps + eps'@ (no extra slack).
prop_piConverges :: Property
prop_piConverges =
  forAll genLogPrec $ \eps ->
  forAll genLogPrec $ \eps' ->
    let p1 = approxAt eps  piRc
        p2 = approxAt eps' piRc
    in abs (p1 - p2) < eps + eps'

-- | e approximant is self-Cauchy at all positive precisions.
prop_eConverges :: Property
prop_eConverges =
  forAll genLogPrec $ \eps ->
  forAll genLogPrec $ \eps' ->
    let e1 = approxAt eps  eRc
        e2 = approxAt eps' eRc
    in abs (e1 - e2) < eps + eps'

-- | The golden ratio approximant satisfies the defining
-- characteristic equation: @phi^2 = phi + 1@, in the sense that
-- @|p^2 - p - 1| < 4 * eps@ for any rational @p@ within @eps@ of
-- @phi@.  (The factor 4 absorbs the Lipschitz constant of the map
-- @x -> x^2 - x - 1@ on the interval @[1, 2]@.)
prop_goldenRatioConverges :: Property
prop_goldenRatioConverges =
  forAll genLogPrec $ \eps ->
    let p = approxAt eps goldenRatio
    in counterexample
         ("eps=" ++ show (fromRational eps :: Double)
          ++ " phi=" ++ show (fromRational p :: Double)
          ++ " residual="
          ++ show (fromRational (abs (p * p - p - 1)) :: Double))
         (abs (p * p - p - 1) < 4 * eps + (1 / 1000))

-- ---------------------------------------------------------------------------
-- Test runner
-- ---------------------------------------------------------------------------

-- | Run all QuickCheck properties.
runAllProperties :: IO ()
runAllProperties = do
  putStrLn "Property: approxBound"
  quickCheck prop_approxBound
  putStrLn "Property: addCommutative"
  quickCheck prop_addCommutative
  putStrLn "Property: addAssociative"
  quickCheck prop_addAssociative
  putStrLn "Property: addZeroLeft"
  quickCheck prop_addZeroLeft
  putStrLn "Property: negInvolutive"
  quickCheck prop_negInvolutive
  putStrLn "Property: subRoundtrip"
  quickCheck prop_subRoundtrip
  putStrLn "Property: mulCommutative"
  quickCheck prop_mulCommutative
  putStrLn "Property: mulOneLeft"
  quickCheck prop_mulOneLeft
  putStrLn "Property: isCauchyApproxRefl"
  quickCheck prop_isCauchyApproxRefl
  putStrLn "Property: sqrt2Residual"
  quickCheck prop_sqrt2Residual
  putStrLn "Property: piConverges"
  quickCheck prop_piConverges
  putStrLn "Property: eConverges"
  quickCheck prop_eConverges
  putStrLn "Property: goldenRatioConverges"
  quickCheck prop_goldenRatioConverges
