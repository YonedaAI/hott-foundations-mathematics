{-# LANGUAGE DeriveFunctor #-}
{-# OPTIONS_GHC -Wall #-}

-- | Coalgebraic stream type with corecursion. Realisation in
--   Haskell of the cubical-HoTT M-type for the stream functor
--   F_A X = A x X.
module Streams
  ( Stream(..)
  , constS
  , unfold
  , takeS
  , mapS
  , zipWithS
  , iterateS
  , natsFrom
  , nats
  , approxBaseB
  , digitsBaseB
  , digitsBaseBSafe
  ) where

-- | Lazy stream type. The runtime guarantees productivity by
--   construction (constructor under WHNF demands head only).
data Stream a = Cons { hd :: a, tl :: Stream a }
  deriving Functor

-- | Constant stream.
constS :: a -> Stream a
constS a = let s = Cons a s in s

-- | Coalgebraic unfold: given a coalgebra (c : C, gamma : C -> A x C),
--   produce the corresponding stream.
unfold :: (c -> (a, c)) -> c -> Stream a
unfold gamma c = let (x, c') = gamma c in Cons x (unfold gamma c')

-- | Truncate to a finite prefix for inspection. Negative or zero
--   depths produce the empty list (total).
takeS :: Int -> Stream a -> [a]
takeS n _ | n <= 0    = []
takeS n (Cons x xs)   = x : takeS (n - 1) xs

-- | Pointwise map. mapS f = fmap f.
mapS :: (a -> b) -> Stream a -> Stream b
mapS = fmap

-- | Pointwise zip-with.
zipWithS :: (a -> b -> c) -> Stream a -> Stream b -> Stream c
zipWithS f (Cons a as) (Cons b bs) = Cons (f a b) (zipWithS f as bs)

-- | Iterate a function from a starting seed.
iterateS :: (a -> a) -> a -> Stream a
iterateS f a = Cons a (iterateS f (f a))

-- | Naturals starting from n.
natsFrom :: Integer -> Stream Integer
natsFrom n = unfold (\m -> (m, m + 1)) n

-- | All naturals: 0, 1, 2, ...
nats :: Stream Integer
nats = natsFrom 0

-- | Approximate the base-b digit stream as a Rational by partial
--   summation. The result is sum_{k=0..n-1} d_k / b^{k+1}. Negative
--   or zero depths yield 0; bases <= 1 are rejected with 'error'
--   (caller should validate input upstream).
approxBaseB :: Integer -> Int -> Stream Int -> Rational
approxBaseB b n s
  | b <= 1    = error "approxBaseB: base must be >= 2"
  | n <= 0    = 0
  | otherwise = go n s 1 0
  where
    bR = fromInteger b :: Rational
    go 0 _           _   acc = acc
    go k (Cons d ds) pwr acc =
      let pwr' = pwr * bR
          acc' = acc + fromIntegral d / pwr'
      in go (k - 1) ds pwr' acc'

-- | Compute the base-b digit stream of a Rational in [0,1).
--   Productive: each tick emits one digit. Bases must satisfy
--   @2 <= b <= toInteger (maxBound :: Int)@ and @0 <= r < 1@;
--   violations raise 'error'. Use 'digitsBaseBSafe' for a checked
--   variant returning 'Either'.
digitsBaseB :: Integer -> Rational -> Stream Int
digitsBaseB b r0
  | b <= 1                             = error "digitsBaseB: base must be >= 2"
  | b > toInteger (maxBound :: Int)    = error "digitsBaseB: base exceeds maxBound :: Int"
  | r0 < 0 || r0 >= 1                  = error "digitsBaseB: rational must lie in [0,1)"
  | otherwise                          = unfold step r0
  where
    bR = fromInteger b :: Rational
    step r =
      let r'  = r * bR
          d   = floor r' :: Integer
          r'' = r' - fromInteger d
      in (fromInteger d, r'')

-- | Checked variant of 'digitsBaseB' that returns 'Left' with a
--   diagnostic message instead of raising 'error'.
digitsBaseBSafe :: Integer -> Rational -> Either String (Stream Int)
digitsBaseBSafe b r0
  | b <= 1                          = Left "base must be >= 2"
  | b > toInteger (maxBound :: Int) = Left "base exceeds maxBound :: Int"
  | r0 < 0 || r0 >= 1               = Left "rational must lie in [0,1)"
  | otherwise                       = Right (digitsBaseB b r0)
