-- | Partial Riemann zeta computations.
--
-- Implements the finite truncations of the Dirichlet series and the
-- Euler product.  These are intended as computational benchmarks for a
-- future HoTT-native formalization.
--
-- Convergence preconditions are tracked at the type level by the
-- 'ConvergentS' newtype, which witnesses @Re(s) > 1@.  Functions that
-- depend on absolute convergence ('zetaSum', 'eulerProduct') accept
-- 'ConvergentS' inputs; the lower-level 'partialZeta' and
-- 'partialEulerProduct' remain available for raw 'Complex Double'
-- demonstrations.
module Zeta
  ( -- * Convergence-witnessing inputs
    ConvergentS
  , mkConvergentS
  , unConvergentS
    -- * Partial computations
  , partialZeta
  , partialEulerProduct
  , zetaSum
  , eulerProduct
  , primesUpTo
  ) where

import Data.Complex (Complex (..), realPart)

-- ---------------------------------------------------------------------------
-- Convergence-witnessing newtype
-- ---------------------------------------------------------------------------

-- | A complex exponent @s@ with @Re(s) > 1@, the half-plane on which the
-- Dirichlet series for the Riemann zeta function converges absolutely.
--
-- Construct via 'mkConvergentS'; the constructor is not exported, so
-- once you have a 'ConvergentS' value you may rely on the precondition.
newtype ConvergentS = ConvergentS { unConvergentS :: Complex Double }
  deriving (Show, Eq)

-- | Smart constructor: returns 'Just' iff @Re(s) > 1@.
mkConvergentS :: Complex Double -> Maybe ConvergentS
mkConvergentS s
  | realPart s > 1 = Just (ConvergentS s)
  | otherwise      = Nothing

-- ---------------------------------------------------------------------------
-- Raw partial computations (no convergence precondition)
-- ---------------------------------------------------------------------------

-- | Partial zeta sum:  @sum_{k=1..N} 1 \/ k^s@.
--
-- Defined for any complex @s@; the series is divergent for @Re(s) <= 1@
-- but the finite truncation is always well-defined and is provided for
-- demonstrations of divergence behavior.
partialZeta :: Int -> Complex Double -> Complex Double
partialZeta n s
  | n < 1     = 0
  | otherwise = sum [ 1 / fromIntegral k ** s | k <- [1..n] ]

-- | Partial Euler product:  @prod_{p prime, p<=N} 1 \/ (1 - p^{-s})@.
partialEulerProduct :: Int -> Complex Double -> Complex Double
partialEulerProduct n s
  | n < 2     = 1
  | otherwise = product [ 1 / (1 - fromIntegral p ** (-s)) | p <- primesUpTo n ]

-- ---------------------------------------------------------------------------
-- Convergence-aware wrappers
-- ---------------------------------------------------------------------------

-- | Convergence-aware partial zeta sum.  Numerically identical to
-- 'partialZeta', but the type signals that @Re(s) > 1@ has been
-- established and the truncation approximates the convergent series.
zetaSum :: Int -> ConvergentS -> Complex Double
zetaSum n (ConvergentS s) = partialZeta n s

-- | Convergence-aware partial Euler product.
eulerProduct :: Int -> ConvergentS -> Complex Double
eulerProduct n (ConvergentS s) = partialEulerProduct n s

-- ---------------------------------------------------------------------------
-- Sieve
-- ---------------------------------------------------------------------------

-- | Primes up to @n@ via simple trial division (sufficient for a prototype).
primesUpTo :: Int -> [Int]
primesUpTo n = sieve [2..n]
  where
    sieve []     = []
    sieve (p:xs) = p : sieve [ x | x <- xs, x `mod` p /= 0 ]
