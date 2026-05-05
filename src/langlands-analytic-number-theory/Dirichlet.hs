-- | Dirichlet series machinery.
--
-- A 'Series a' is logically a function from positive integers to 'a'.
-- We support
--
-- * constant series,
-- * the Möbius function,
-- * Dirichlet convolution,
-- * coefficient lookup.
--
-- This is the computational analogue of the HoTT-native Dirichlet series
-- type proposed in the paper.
--
-- Total convention.  The exported 'coeff' function is total: at any
-- non-positive index it returns the zero of the underlying ring.  All
-- exported constructors ('constSeries', 'mobius', 'convolve', 'mkSeries')
-- agree on this convention, so consumers may treat 'Series a' as if it
-- were 'Natural -> a' with @0 -> 0@ and @>=1 -> the intended coefficient@.
module Dirichlet
  ( Series
  , mkSeries
  , coeff
  , constSeries
  , mobius
  , convolve
  , divisors
  ) where

-- | A formal Dirichlet series.
--
-- The internal representation is a coefficient function @Int -> a@, but
-- the only legal indices are positive integers.  The exported 'coeff'
-- accessor enforces the total convention @coeff s n = 0 for n <= 0@.
newtype Series a = Series (Int -> a)

-- | Total coefficient lookup.
--
-- For valid (positive) indices, returns the underlying coefficient; for
-- non-positive indices, returns the additive identity '0'.  This makes
-- every exported operation agree at invalid inputs and avoids the
-- inconsistency where @constSeries c@ would otherwise return @c@ at
-- @n <= 0@.
coeff :: Num a => Series a -> Int -> a
coeff (Series f) n
  | n <= 0    = 0
  | otherwise = f n

-- | Construct a Dirichlet series from a coefficient function.  The
-- function need only be defined for positive indices; values at
-- non-positive indices are ignored thanks to the total 'coeff' wrapper.
mkSeries :: (Int -> a) -> Series a
mkSeries = Series

-- | Constant Dirichlet series:  @a(n) = c@ for all positive @n@.
constSeries :: a -> Series a
constSeries c = Series (const c)

-- | Möbius function @mu(n)@.
--
-- * @mu(1) = 1@.
-- * @mu(n) = 0@ if @n@ has a repeated prime factor.
-- * @mu(n) = (-1)^k@ if @n@ is squarefree with @k@ prime factors.
mobius :: Num a => Series a
mobius = Series mu
  where
    mu :: Num a => Int -> a
    mu n
      | n <= 0    = 0
      | n == 1    = 1
      | otherwise =
          let factors = primeFactors n
          in if hasRepeats factors
               then 0
               else if even (length factors) then 1 else -1

-- | Dirichlet convolution:  @(a * b)(n) = sum_{d | n} a(d) * b(n / d)@.
--
-- The result agrees with the total convention: @(a * b)(n) = 0@ for
-- @n <= 0@, since 'divisors' returns @[]@ in that case.
convolve :: Num a => Series a -> Series a -> Series a
convolve sA sB = Series $ \n ->
  sum [ coeff sA d * coeff sB (n `div` d) | d <- divisors n ]

-- | All positive divisors of @n@ in ascending order; @[]@ for @n <= 0@.
divisors :: Int -> [Int]
divisors n
  | n <= 0    = []
  | otherwise = [ d | d <- [1..n], n `mod` d == 0 ]

-- | Prime factorization (with repetition).
primeFactors :: Int -> [Int]
primeFactors = go 2
  where
    go :: Int -> Int -> [Int]
    go _ 1 = []
    go d n
      | d * d > n          = [n]
      | n `mod` d == 0     = d : go d (n `div` d)
      | otherwise          = go (d + 1) n

hasRepeats :: Eq a => [a] -> Bool
hasRepeats []     = False
hasRepeats (x:xs) = x `elem` xs || hasRepeats xs
