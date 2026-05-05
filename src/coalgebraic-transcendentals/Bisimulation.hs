{-# OPTIONS_GHC -Wall #-}

-- | Bisimulation as the coinductive equality on streams. We
--   approximate the (in general undecidable) bisimulation by a
--   bounded check, which is sufficient for property-based testing.
--
--   For digit streams of reals we use the more refined
--   carry-bisimulation: two digit streams represent the same real
--   iff their truncated values lie in overlapping closed intervals
--   of width b^{-n}. This identifies the dual representations
--   0.0999... and 0.1000... in base 10.
module Bisimulation
  ( bisimUpTo
  , bisimEqUpTo
  , carryEqUpTo
  , prefixIntervalBaseB
  ) where

import Streams (Stream(..), takeS)

-- | Plain bisimilarity up to depth n: the streams agree on the
--   first n positions. Negative or zero depths are treated as 0
--   and trivially succeed.
bisimUpTo :: Eq a => Int -> Stream a -> Stream a -> Bool
bisimUpTo n s t
  | n <= 0    = True
  | otherwise = takeS n s == takeS n t

-- | Bisimulation equality, exposed with a default depth.
bisimEqUpTo :: Eq a => Stream a -> Stream a -> Bool
bisimEqUpTo = bisimUpTo 64

-- | The pair (lower, upper) such that any real represented by a
--   valid base-b digit stream extending the given prefix lies in
--   [lower, upper] (closed). Specifically:
--
--     lower = sum_{k=0..n-1} d_k * b^{-(k+1)}
--     upper = lower + b^{-n}
--
--   This is exactly the carry envelope used in the paper.
prefixIntervalBaseB
  :: Integer        -- ^ base b (>= 2)
  -> Int            -- ^ depth n (>= 0)
  -> Stream Int     -- ^ digit stream (digits validated up to depth n)
  -> (Rational, Rational)
prefixIntervalBaseB b n s
  | b <= 1    = error "prefixIntervalBaseB: base must be >= 2"
  | n <= 0    = (0, 1)
  | not (validPrefix b n s)
              = error "prefixIntervalBaseB: digit out of range [0, b-1]"
  | otherwise =
      let lower = approx b n s
          width = recip (fromInteger b ^ n) :: Rational
      in (lower, lower + width)
  where
    approx :: Integer -> Int -> Stream Int -> Rational
    approx base k str = go k str 1 0
      where
        bR = fromInteger base :: Rational
        go 0 _           _   acc = acc
        go j (Cons d ds) pwr acc =
          let pwr' = pwr * bR
              acc' = acc + fromIntegral d / pwr'
          in go (j - 1) ds pwr' acc'

-- | Validate that the first n digits all lie in [0, b-1].
--   Required for the carry semantics to be sound.
validPrefix :: Integer -> Int -> Stream Int -> Bool
validPrefix _ 0 _           = True
validPrefix b k (Cons d ds) =
  0 <= d && fromIntegral d < b && validPrefix b (k - 1) ds

-- | Carry-bisimulation up to depth n in base b. Two digit streams
--   are carry-bisimilar at depth n iff their prefix intervals
--   overlap. This identifies dual representations such as
--   0.0999... and 0.1000... in base 10. Depths <= 0 trivially
--   succeed; bases <= 1 are rejected; digits out of range
--   [0, b-1] in either stream raise 'error' so callers cannot
--   feed invalid coalgebras.
carryEqUpTo :: Integer -> Int -> Stream Int -> Stream Int -> Bool
carryEqUpTo b n s t
  | b <= 1    = error "carryEqUpTo: base must be >= 2"
  | n <= 0    = True
  | not (validPrefix b n s && validPrefix b n t)
              = error "carryEqUpTo: digit out of range [0, b-1]"
  | otherwise =
      let (loS, hiS) = prefixIntervalBaseB b n s
          (loT, hiT) = prefixIntervalBaseB b n t
      in loS <= hiT && loT <= hiS
