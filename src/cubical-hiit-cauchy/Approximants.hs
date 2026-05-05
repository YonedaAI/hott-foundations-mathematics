-- |
-- Module      : Approximants
-- Description : Constructive approximants for sqrt(2), pi, e, phi
-- Copyright   : (c) YonedaAI Research, 2026
--
-- Concrete Cauchy real values for the demonstration constants used
-- throughout the paper.  Each is built as @Lim f@ where @f@ produces
-- a rational @epsilon@-approximation of the desired constant.
--
-- All approximants are driven by /exact/ rational error bounds:
--
--   * 'newtonSqrt2' / 'newtonSqrt5' iterate Newton's method until the
--     residual @|x^2 - a| < eps@, which is the documented invariant.
--   * 'machinPi' allocates the @eps@ budget across the two arctan
--     calls in Machin's formula, accounting for the @16@ and @4@
--     multipliers, and stops each series once the next-term tail
--     bound for the alternating arctan series falls below the
--     allotted slice.
--   * 'eApprox' truncates the exponential series at the first @n@
--     for which the remainder bound @3 / n!@ is below @eps@.

module Approximants
  ( sqrt2
  , piRc
  , eRc
  , goldenRatio
  ) where

import Reals (Rc(..), QPos)

-- ---------------------------------------------------------------------------
-- sqrt 2 and sqrt 5 by Newton's method
-- ---------------------------------------------------------------------------

-- | Square root of 2 by Newton iteration (Heron's method).
-- Produces a rational @x@ with @|x^2 - 2| < eps@.
sqrt2 :: Rc
sqrt2 = Lim (\eps -> Rat (newtonSqrt2 eps))

newtonSqrt2 :: QPos -> Rational
newtonSqrt2 = newtonRoot 2 (3 / 2)

-- | @newtonRoot a x0 eps@ returns a rational @x@ with the
-- /residual/ @|x^2 - a| < eps@, starting from initial guess @x0@.
-- The iteration is doubly self-correcting: Newton's method converges
-- quadratically for positive @a@ and positive starting guess, so the
-- residual decreases super-exponentially.
--
-- The iteration cap (10000) is a safety guard against pathological
-- inputs; if it is exceeded without satisfying the residual bound,
-- 'newtonRoot' raises an 'error'.  This is intentional: we prefer a
-- loud failure to silently violating the documented contract.
newtonRoot :: Rational -> Rational -> QPos -> Rational
newtonRoot a x0 eps = go x0 (10000 :: Int)
  where
    go _ 0 =
      error ("Approximants.newtonRoot: iteration cap exceeded for "
             ++ "a=" ++ show (fromRational a :: Double)
             ++ ", eps=" ++ show (fromRational eps :: Double))
    go x n =
      let residual = abs (x * x - a)
      in if residual < eps
           then x
           else
             let x' = (x + a / x) / 2
             in go x' (n - 1)

-- ---------------------------------------------------------------------------
-- pi by Machin's formula
-- ---------------------------------------------------------------------------

-- | Pi by Machin's formula:
--
-- > pi = 16 * arctan(1/5) - 4 * arctan(1/239)
--
-- We allocate the error budget so that the contribution of each
-- arctan to the final answer is bounded by @eps / 2@.
piRc :: Rc
piRc = Lim (\eps -> Rat (machinPi eps))

machinPi :: QPos -> Rational
machinPi eps =
  let -- Allocate eps/2 to each arctan, accounting for the 16 and 4
      -- multipliers in front of them.
      eps5   = eps / (2 * 16)
      eps239 = eps / (2 * 4)
      a5   = arctanWithBound (1 / 5)   eps5
      a239 = arctanWithBound (1 / 239) eps239
  in 16 * a5 - 4 * a239

-- | Sum the alternating arctan series until the next term is
-- bounded above by the requested precision.
--
-- For @|x| < 1@, the alternating series
-- @x - x^3/3 + x^5/5 - ...@ has truncation error bounded by the
-- absolute value of the first omitted term.  We sum terms until
-- @|x|^(2k+1) / (2k+1) < eps@ in /exact/ rational arithmetic.
--
-- A safety cap of 100000 terms is enforced; if it is exceeded
-- without the tail-bound test succeeding, 'arctanWithBound' raises
-- an 'error'.  In practice this never fires for the @|x| <= 1/5@
-- arguments produced by Machin's formula.
arctanWithBound :: Rational -> QPos -> Rational
arctanWithBound x eps = go 0 0
  where
    go :: Int -> Rational -> Rational
    go k acc
      | k > 100000 =
          error ("Approximants.arctanWithBound: tail bound not "
                 ++ "achieved within 100000 terms for "
                 ++ "x=" ++ show (fromRational x :: Double)
                 ++ ", eps=" ++ show (fromRational eps :: Double))
      | otherwise =
          let exponent_ = 2 * k + 1
              term      = x ^ exponent_ / fromIntegral exponent_
              tail_     = abs term
          in if k > 0 && tail_ < eps
               then acc
               else
                 let s    = if even k then term else negate term
                     acc' = acc + s
                 in go (k + 1) acc'

-- ---------------------------------------------------------------------------
-- e by partial sums of the exponential series
-- ---------------------------------------------------------------------------

-- | Euler's constant e by partial sums of @sum_{k=0..N} 1/k!@.
--
-- The remainder satisfies
--
-- > 0 < e - sum_{k=0..N} 1/k! < 3 / (N+1)!
--
-- so we pick the first @N@ for which @3 / (N+1)! < eps@.
eRc :: Rc
eRc = Lim (\eps -> Rat (eApprox eps))

eApprox :: QPos -> Rational
eApprox eps =
  let n = factorialDepth eps
  in sum [ 1 / fromInteger (factorial k) | k <- [0 .. n] ]

-- | Smallest @n@ with @3 / (n+1)! < eps@.  An iteration cap of 1000
-- is enforced as a runtime assertion: if @1000@ steps still fail to
-- satisfy the bound, 'factorialDepth' raises an 'error' rather than
-- returning a bad value silently.  In practice @n@ never exceeds
-- @20@ for any representable 'Double' precision.
factorialDepth :: Rational -> Int
factorialDepth eps = go 0 1
  where
    go :: Int -> Integer -> Int
    go n facN
      | n >= 1000 =
          error ("Approximants.factorialDepth: bound 3/(n+1)! < eps "
                 ++ "not achieved within 1000 steps for eps="
                 ++ show (fromRational eps :: Double))
      | 3 / fromInteger (facN * fromIntegral (n + 1)) < eps = n
      | otherwise                                =
          go (n + 1) (facN * fromIntegral (n + 1))

-- | Total factorial: refuses negative arguments by clamping at zero,
-- producing the multiplicative identity for any non-positive input.
-- This keeps callers from triggering nontermination on bad indices.
factorial :: Int -> Integer
factorial k
  | k <= 0    = 1
  | otherwise = fromIntegral k * factorial (k - 1)

-- ---------------------------------------------------------------------------
-- Golden ratio phi = (1 + sqrt 5) / 2
-- ---------------------------------------------------------------------------

-- | Golden ratio @phi = (1 + sqrt 5) / 2@.
goldenRatio :: Rc
goldenRatio = Lim (\eps -> Rat ((1 + newtonSqrt5 eps) / 2))

newtonSqrt5 :: QPos -> Rational
newtonSqrt5 = newtonRoot 5 (5 / 2)
