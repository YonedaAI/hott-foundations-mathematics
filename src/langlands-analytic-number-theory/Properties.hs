{-# LANGUAGE ScopedTypeVariables #-}
-- | QuickCheck properties for Dirichlet series operations, the Möbius
-- identity, partial Riemann zeta sums, and the Euler product.
--
-- These tests provide computational evidence for the algebraic and
-- analytic identities formalized abstractly in the paper
-- "Toward HoTT-Native Analytic Number Theory" (Long 2026).
module Properties
  ( -- * Dirichlet-series properties
    prop_MobiusSum
  , prop_ConvCommutative
  , prop_ConvIdentity
  , prop_ConvAssociative
  , prop_DivisorsCorrect
  , prop_CoeffTotalAtNonPositive
    -- * Zeta-function properties
  , prop_ZetaMonotoneInN
  , prop_ZetaBoundedAboveByEuler
  , prop_ZetaPositiveReal
  , prop_ZetaConsistencyAtTwo
  , prop_ZetaConvergesToReference
  , prop_ZetaComplexBoundedByReal
    -- * Euler-product properties
  , prop_EulerConvergesToReference
  , prop_EulerProductPositive
  , prop_FiniteEulerIdentity
  , prop_FiniteEulerIdentityOutsideConvergent
  , prop_NearBoundaryEulerBound
    -- * Test runner
  , runAllProperties
  ) where

import qualified Dirichlet
import Dirichlet (Series, coeff)
import qualified Zeta
import qualified Proofs

import Data.Complex (Complex (..), magnitude, realPart)
import Test.QuickCheck

-- ---------------------------------------------------------------------------
-- Newtypes for restricted Arbitrary instances
-- ---------------------------------------------------------------------------

-- | Positive integer in [1..200], used to bound divisor enumeration cost.
newtype SmallPos = SmallPos { getSmallPos :: Int } deriving (Show, Eq)

instance Arbitrary SmallPos where
  arbitrary = SmallPos <$> chooseInt (1, 200)
  shrink (SmallPos n) = [ SmallPos k | k <- shrink n, k >= 1 ]

-- | Real exponent s with Re(s) > 1, comfortably inside the region of
-- absolute convergence of the Dirichlet series for zeta.
newtype ConvergentS = ConvergentS { getConvergentS :: Double } deriving (Show, Eq)

instance Arbitrary ConvergentS where
  arbitrary = ConvergentS <$> choose (1.5, 6.0)
  shrink (ConvergentS s) = [ ConvergentS s' | s' <- shrink s, s' >= 1.5, s' <= 6.0 ]

-- | Real exponent s with Re(s) > 1 close to the boundary, in [1.05, 1.4].
-- Used to stress-test convergence behavior near the critical line.
newtype NearBoundaryS = NearBoundaryS { getNearBoundaryS :: Double }
  deriving (Show, Eq)

instance Arbitrary NearBoundaryS where
  arbitrary = NearBoundaryS <$> choose (1.05, 1.4)
  shrink _  = []

-- | Complex exponent s with Re(s) in [1.5, 6.0] and Im(s) in [-20, 20].
-- The Dirichlet series for zeta converges absolutely throughout this box.
newtype ComplexConvergentS = ComplexConvergentS { getComplexConvergentS :: Complex Double }
  deriving (Show, Eq)

instance Arbitrary ComplexConvergentS where
  arbitrary = do
    re <- choose (1.5, 6.0)
    im <- choose (-20.0, 20.0)
    pure (ComplexConvergentS (re :+ im))
  shrink _ = []

-- | A coefficient list of length 1..30 of small ints, representing
-- a finitely-supported Dirichlet series.
newtype SeriesCoeffs = SeriesCoeffs { getSeriesCoeffs :: [Int] } deriving (Show, Eq)

instance Arbitrary SeriesCoeffs where
  arbitrary = do
    k <- chooseInt (1, 30)
    SeriesCoeffs <$> vectorOf k (chooseInt (-5, 5))
  shrink (SeriesCoeffs xs) =
    [ SeriesCoeffs xs' | xs' <- shrink xs, not (null xs'), length xs' <= 30 ]

-- | Build a finitely-supported series from a coefficient list (1-indexed).
mkFiniteSeries :: [Int] -> Series Int
mkFiniteSeries xs = Dirichlet.mkSeries $ \k ->
  if k >= 1 && k <= length xs then xs !! (k-1) else 0

-- ---------------------------------------------------------------------------
-- Dirichlet-series properties
-- ---------------------------------------------------------------------------

-- | Möbius identity:  sum_{d | n} mu(d) = [n == 1].
-- Encoded as (mu * 1)(n) = delta_{n,1}.
prop_MobiusSum :: SmallPos -> Property
prop_MobiusSum (SmallPos n) =
  let one  = Dirichlet.constSeries 1 :: Series Int
      conv = Dirichlet.convolve Dirichlet.mobius one
      r    = coeff conv n
      expected = if n == 1 then 1 else 0
  in counterexample ("n=" ++ show n ++ " (mu*1)(n)=" ++ show r) $
       r === expected

-- | Dirichlet convolution is commutative:  a * b = b * a.
prop_ConvCommutative :: SeriesCoeffs -> SeriesCoeffs -> SmallPos -> Property
prop_ConvCommutative (SeriesCoeffs as) (SeriesCoeffs bs) (SmallPos n) =
  let sA = mkFiniteSeries as
      sB = mkFiniteSeries bs
      ab = Dirichlet.convolve sA sB
      ba = Dirichlet.convolve sB sA
  in coeff ab n === coeff ba n

-- | Two-sided multiplicative identity:  delta * a = a = a * delta,
-- where delta(1)=1, delta(n>1)=0.
prop_ConvIdentity :: SeriesCoeffs -> SmallPos -> Property
prop_ConvIdentity (SeriesCoeffs as) (SmallPos n) =
  let delta = Dirichlet.mkSeries (\k -> if k == 1 then 1 else 0) :: Series Int
      sA    = mkFiniteSeries as
      da    = Dirichlet.convolve delta sA
      ad    = Dirichlet.convolve sA delta
  in conjoin
       [ counterexample "delta*a" $ coeff da n === coeff sA n
       , counterexample "a*delta" $ coeff ad n === coeff sA n
       ]

-- | Dirichlet convolution is associative:  (a*b)*c = a*(b*c).
prop_ConvAssociative
  :: SeriesCoeffs -> SeriesCoeffs -> SeriesCoeffs -> SmallPos -> Property
prop_ConvAssociative
  (SeriesCoeffs as) (SeriesCoeffs bs) (SeriesCoeffs cs) (SmallPos n) =
  let sA = mkFiniteSeries as
      sB = mkFiniteSeries bs
      sC = mkFiniteSeries cs
      lhs = Dirichlet.convolve (Dirichlet.convolve sA sB) sC
      rhs = Dirichlet.convolve sA (Dirichlet.convolve sB sC)
  in coeff lhs n === coeff rhs n

-- | Divisor enumeration is correct: every listed d divides n, divisors are
-- distinct, sorted ascending, and the list contains exactly the d in [1..n]
-- with d | n.
prop_DivisorsCorrect :: SmallPos -> Property
prop_DivisorsCorrect (SmallPos n) =
  let ds  = Dirichlet.divisors n
      ref = [ d | d <- [1..n], n `mod` d == 0 ]
  in conjoin
       [ counterexample "all divide n"  $ all (\d -> n `mod` d == 0) ds
       , counterexample "sorted ascending" $
           and (zipWith (<) ds (drop 1 ds))
       , counterexample "matches reference" $ ds === ref
       ]

-- | The total convention for 'coeff': at non-positive indices every
-- exported series returns 0, regardless of how it was constructed.
prop_CoeffTotalAtNonPositive :: NonNegative Int -> Property
prop_CoeffTotalAtNonPositive (NonNegative k) =
  let n     = -k                                                -- n in [..0]
      sCon  = Dirichlet.constSeries (42 :: Int)                 -- raw fn would return 42
      sMob  = Dirichlet.mobius :: Series Int
      sFin  = mkFiniteSeries [1,2,3]
      sConv = Dirichlet.convolve sCon sFin
  in conjoin
       [ counterexample "constSeries"  $ coeff sCon  n === 0
       , counterexample "mobius"       $ coeff sMob  n === 0
       , counterexample "finite"       $ coeff sFin  n === 0
       , counterexample "convolution"  $ coeff sConv n === 0
       ]

-- ---------------------------------------------------------------------------
-- Zeta partial-sum properties
-- ---------------------------------------------------------------------------

-- | For real s > 1 and N1 <= N2, the partial sum is monotone non-decreasing
-- (every added term 1/k^s is positive).
prop_ZetaMonotoneInN :: ConvergentS -> SmallPos -> SmallPos -> Property
prop_ZetaMonotoneInN (ConvergentS s) (SmallPos a) (SmallPos b) =
  let n1 = min a b
      n2 = max a b
      sC = s :+ 0 :: Complex Double
      v1 = realPart (Zeta.partialZeta n1 sC)
      v2 = realPart (Zeta.partialZeta n2 sC)
  in counterexample ("n1=" ++ show n1 ++ " n2=" ++ show n2
                     ++ " v1=" ++ show v1 ++ " v2=" ++ show v2) $
       v1 <= v2 + 1.0e-12

-- | For real s > 1, partial Euler product is an upper bound on the partial
-- zeta sum, since the product expansion contains every 1/n^s term plus
-- additional positive contributions.
prop_ZetaBoundedAboveByEuler :: ConvergentS -> SmallPos -> Property
prop_ZetaBoundedAboveByEuler (ConvergentS s) (SmallPos n) =
  let sC = s :+ 0 :: Complex Double
      ps = realPart (Zeta.partialZeta n sC)
      pe = realPart (Zeta.partialEulerProduct n sC)
  in counterexample ("n=" ++ show n ++ " sum=" ++ show ps
                     ++ " euler=" ++ show pe) $
       ps <= pe + 1.0e-9

-- | For real s > 1, the partial zeta sum is positive (in fact >= 1).
prop_ZetaPositiveReal :: ConvergentS -> SmallPos -> Property
prop_ZetaPositiveReal (ConvergentS s) (SmallPos n) =
  let sC = s :+ 0 :: Complex Double
      v  = realPart (Zeta.partialZeta n sC)
  in counterexample ("n=" ++ show n ++ " v=" ++ show v) $ v >= 1.0 - 1.0e-12

-- | Consistency check: zeta(2) approximated to N=10000 is within 1e-3 of
-- the closed form pi^2/6.
prop_ZetaConsistencyAtTwo :: Property
prop_ZetaConsistencyAtTwo =
  let s         = 2 :+ 0 :: Complex Double
      v         = realPart (Zeta.partialZeta 10000 s)
      reference = pi * pi / 6
      err       = abs (v - reference)
  in counterexample ("zeta(2) ~ " ++ show v ++ "  ref=" ++ show reference
                     ++ "  err=" ++ show err) $
       err < 1.0e-3

-- | Convergence to a high-truncation reference: for a randomly chosen
-- s with Re(s) > 1.5, the partial zeta sum at N is within a tail bound
-- of the partial sum at @max(N, 50000)@.  The standard tail bound for
-- @sum_{k>N} 1\/k^s@ is @<= N^{1-Re(s)} \/ (Re(s) - 1)@.
prop_ZetaConvergesToReference :: ConvergentS -> SmallPos -> Property
prop_ZetaConvergesToReference (ConvergentS s) (SmallPos n0) =
  let n      = max n0 8
      bigN   = max n 50000
      sC     = s :+ 0 :: Complex Double
      ref    = Zeta.partialZeta bigN sC
      approx = Zeta.partialZeta n     sC
      err    = magnitude (approx - ref)
      bound  = (fromIntegral n :: Double) ** (1 - s) / (s - 1) + 1.0e-9
  in counterexample ("n=" ++ show n ++ " err=" ++ show err
                     ++ " bound=" ++ show bound) $
       err <= bound

-- | For complex s with Re(s) > 1, |partialZeta N s| <= partialZeta N (Re s),
-- since |1\/k^s| = 1\/k^{Re s}.
prop_ZetaComplexBoundedByReal :: ComplexConvergentS -> SmallPos -> Property
prop_ZetaComplexBoundedByReal (ComplexConvergentS sC) (SmallPos n) =
  let mag    = magnitude (Zeta.partialZeta n sC)
      reBound = realPart (Zeta.partialZeta n (realPart sC :+ 0))
  in counterexample ("|zetaN(s)|=" ++ show mag ++ " bound=" ++ show reBound) $
       mag <= reBound + 1.0e-9

-- ---------------------------------------------------------------------------
-- Euler-product properties
-- ---------------------------------------------------------------------------

-- | Convergence of the partial Euler product to a high-truncation
-- reference value.  We pick the same reference cutoff for both, then
-- compare to a less-truncated partial product; the residual should be
-- bounded by the explicit tail estimate
-- @sum_{p > N prime} |log(1 - p^{-s})| <= sum_{p > N} 2 p^{-Re s}@,
-- which we further upper-bound by @sum_{k>N} 2 k^{-Re s}@ and
-- @<= 2 N^{1-Re s} \/ (Re s - 1)@.
prop_EulerConvergesToReference :: ConvergentS -> SmallPos -> Property
prop_EulerConvergesToReference (ConvergentS s) (SmallPos n0) =
  let n      = max n0 8
      bigN   = max n 50000
      sC     = s :+ 0 :: Complex Double
      ref    = Zeta.partialEulerProduct bigN sC
      approx = Zeta.partialEulerProduct n     sC
      err    = magnitude (approx - ref)
      -- Generous bound: 4 * N^{1-Re s} / (Re s - 1).  The factor 4
      -- absorbs both the geometric series factor and the multiplicative
      -- to additive log conversion for s near 1.5.
      bound  = 4 * (fromIntegral n :: Double) ** (1 - s) / (s - 1) + 1.0e-6
  in counterexample ("n=" ++ show n ++ " err=" ++ show err
                     ++ " bound=" ++ show bound) $
       err <= bound

-- | For real s > 1 the partial Euler product is strictly positive.
prop_EulerProductPositive :: ConvergentS -> SmallPos -> Property
prop_EulerProductPositive (ConvergentS s) (SmallPos n) =
  let sC = s :+ 0 :: Complex Double
      v  = realPart (Zeta.partialEulerProduct n sC)
  in counterexample ("n=" ++ show n ++ " v=" ++ show v) $ v > 0

-- | Sound finite Euler identity:
--
--     prod_{p in P} sum_{k=0..maxExp} p^{-k s}  ==  sum_{n P-smooth, e_p<=maxExp} 1\/n^s.
--
-- Proven equationally in 'Proofs.proof_EulerFiniteIdentity'.  We sample
-- (nPrimes, maxExp, s) over a small grid and check that the residual is
-- numerically zero up to floating-point error.
prop_FiniteEulerIdentity :: Property
prop_FiniteEulerIdentity = forAll gen check
  where
    gen :: Gen (Int, Int, Complex Double)
    gen = do
      nPrimes <- chooseInt (1, 6)
      maxExp  <- chooseInt (0, 4)
      sRe     <- choose (1.5, 4.0)
      sIm     <- choose (-3.0, 3.0)
      pure (nPrimes, maxExp, sRe :+ sIm)
    check :: (Int, Int, Complex Double) -> Property
    check (nP, mE, sC) = case Proofs.proof_EulerFiniteIdentity nP mE sC 1.0e-9 of
      Right () -> property True
      Left  e  -> counterexample e (property False)

-- | Sound finite Euler identity outside the convergent half-plane.
-- The identity
--
--     prod_{p in P} sum_{k=0..maxExp} p^{-k s}
--   == sum_{n P-smooth, e_p<=maxExp} 1\/n^s
--
-- is purely algebraic; it holds for /any/ complex @s@.  This property
-- exercises that claim with @Re(s) <= 1@ inputs (including @Re(s) <= 0@
-- and @Re(s) = 0@), where the infinite Euler product diverges.
prop_FiniteEulerIdentityOutsideConvergent :: Property
prop_FiniteEulerIdentityOutsideConvergent = forAll gen check
  where
    gen :: Gen (Int, Int, Complex Double)
    gen = do
      nPrimes <- chooseInt (1, 5)
      maxExp  <- chooseInt (0, 3)
      sRe     <- choose (-1.0, 1.0)
      sIm     <- choose (-3.0, 3.0)
      pure (nPrimes, maxExp, sRe :+ sIm)
    -- Use a relative tolerance: at negative Re(s) the truncated product
    -- and P-smooth sum can grow large in magnitude, so an absolute 1e-9
    -- tolerance is too tight.  We scale by the magnitude of the
    -- truncated Euler product (a generous proxy for the value scale).
    check :: (Int, Int, Complex Double) -> Property
    check (nP, mE, sC) =
      let -- Scale the tolerance with the magnitude of the (already
          -- finite) algebraic value computed by 'pSmoothPartialSum'.
          -- For negative Re(s) this magnitude can be much larger than
          -- 1, and floating-point relative error scales with it.
          valueScale = magnitude (Proofs.pSmoothPartialSum nP mE sC)
          tol        = 1.0e-9 + 1.0e-9 * valueScale
      in case Proofs.proof_EulerFiniteIdentity nP mE sC tol of
           Right () -> property True
           Left  e  -> counterexample (e ++ " (scale=" ++ show valueScale ++ ")")
                                     (property False)

-- | Near-boundary stress test: for s in [1.05, 1.4] the partial zeta
-- sum is still bounded above by the partial Euler product.
prop_NearBoundaryEulerBound :: NearBoundaryS -> SmallPos -> Property
prop_NearBoundaryEulerBound (NearBoundaryS s) (SmallPos n) =
  let sC = s :+ 0 :: Complex Double
      ps = realPart (Zeta.partialZeta n sC)
      pe = realPart (Zeta.partialEulerProduct n sC)
  in counterexample ("near-boundary s=" ++ show s ++ " n=" ++ show n
                     ++ " sum=" ++ show ps ++ " euler=" ++ show pe) $
       ps <= pe + 1.0e-6

-- ---------------------------------------------------------------------------
-- Runner
-- ---------------------------------------------------------------------------

-- | Run every QuickCheck property.  Each property uses 200 successful
-- cases (2x default) for confidence.
runAllProperties :: IO ()
runAllProperties = do
  putStrLn "--- QuickCheck Properties ---"
  let opts = stdArgs { maxSuccess = 200 }
  putStrLn "[Dirichlet] prop_MobiusSum"
  quickCheckWith opts prop_MobiusSum
  putStrLn "[Dirichlet] prop_ConvCommutative"
  quickCheckWith opts prop_ConvCommutative
  putStrLn "[Dirichlet] prop_ConvIdentity"
  quickCheckWith opts prop_ConvIdentity
  putStrLn "[Dirichlet] prop_ConvAssociative"
  quickCheckWith opts { maxSuccess = 100 } prop_ConvAssociative
  putStrLn "[Dirichlet] prop_DivisorsCorrect"
  quickCheckWith opts prop_DivisorsCorrect
  putStrLn "[Dirichlet] prop_CoeffTotalAtNonPositive"
  quickCheckWith opts prop_CoeffTotalAtNonPositive
  putStrLn "[Zeta] prop_ZetaMonotoneInN"
  quickCheckWith opts prop_ZetaMonotoneInN
  putStrLn "[Zeta] prop_ZetaBoundedAboveByEuler"
  quickCheckWith opts prop_ZetaBoundedAboveByEuler
  putStrLn "[Zeta] prop_ZetaPositiveReal"
  quickCheckWith opts prop_ZetaPositiveReal
  putStrLn "[Zeta] prop_ZetaConsistencyAtTwo"
  quickCheck prop_ZetaConsistencyAtTwo
  putStrLn "[Zeta] prop_ZetaConvergesToReference"
  quickCheckWith opts { maxSuccess = 50 } prop_ZetaConvergesToReference
  putStrLn "[Zeta] prop_ZetaComplexBoundedByReal"
  quickCheckWith opts prop_ZetaComplexBoundedByReal
  putStrLn "[Euler] prop_EulerConvergesToReference"
  quickCheckWith opts { maxSuccess = 50 } prop_EulerConvergesToReference
  putStrLn "[Euler] prop_EulerProductPositive"
  quickCheckWith opts prop_EulerProductPositive
  putStrLn "[Euler] prop_FiniteEulerIdentity"
  quickCheckWith opts { maxSuccess = 100 } prop_FiniteEulerIdentity
  putStrLn "[Euler] prop_FiniteEulerIdentityOutsideConvergent"
  quickCheckWith opts { maxSuccess = 100 } prop_FiniteEulerIdentityOutsideConvergent
  putStrLn "[Euler] prop_NearBoundaryEulerBound"
  quickCheckWith opts prop_NearBoundaryEulerBound
