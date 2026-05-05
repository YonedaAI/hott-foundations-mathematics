{-# OPTIONS_GHC -Wall #-}

-- | Runnable demonstrations: digit streams of pi (Leibniz, Machin)
--   and e (factorial series), plus the QuickCheck property suite
--   and executable equational proof checks.
module Main (main) where

import System.Exit (exitFailure)

import Streams
  ( Stream(..)
  , constS
  , takeS
  , unfold
  , mapS
  , approxBaseB
  )
import Bisimulation (carryEqUpTo)
import qualified Properties as Q
import qualified Proofs as P

-- | Stream of partial sums of a stream of rationals.
partialSums :: Stream Rational -> Stream Rational
partialSums = unfoldSums 0
  where
    unfoldSums :: Rational -> Stream Rational -> Stream Rational
    unfoldSums acc (Cons x xs) =
      let acc' = acc + x
      in Cons acc' (unfoldSums acc' xs)

-- | Leibniz series for pi/4: sum_{n>=0} (-1)^n / (2n+1).
leibnizTerms :: Stream Rational
leibnizTerms = mapS term (natsFromI 0)
  where
    natsFromI :: Integer -> Stream Integer
    natsFromI n = Cons n (natsFromI (n + 1))
    term :: Integer -> Rational
    term n =
      let s = if even n then 1 else -1
          d = fromInteger (2 * n + 1)
      in s / d

-- | Approximate pi via 4 * partial sums of Leibniz. Returns
--   'Nothing' when n <= 0 (no terms summed).
piLeibnizApprox :: Int -> Maybe Rational
piLeibnizApprox n
  | n <= 0    = Nothing
  | otherwise =
      let ps = partialSums leibnizTerms
          xs = takeS n ps
      in case xs of
           [] -> Nothing
           _  -> Just (4 * last xs)

-- | Machin's formula: pi/4 = 4 * arctan(1/5) - arctan(1/239).
--   arctan x = sum_{k>=0} (-1)^k x^{2k+1} / (2k+1).
arctanRat :: Rational -> Int -> Rational
arctanRat x n = sum [term k | k <- [0 .. n - 1]]
  where
    term :: Int -> Rational
    term k =
      let s = if even k then 1 else -1
          p = x ^ (2 * k + 1)
          d = fromIntegral (2 * k + 1)
      in s * p / d

-- | Pi via Machin to n terms each.
piMachinApprox :: Int -> Rational
piMachinApprox n =
  4 * (4 * arctanRat (1/5) n - arctanRat (1/239) n)

-- | Factorial stream: 1, 1, 2, 6, 24, ...
factsStream :: Stream Integer
factsStream = unfold step (0, 1)
  where
    step :: (Integer, Integer) -> (Integer, (Integer, Integer))
    step (n, f) =
      let f' = if n == 0 then 1 else f * n
      in (f', (n + 1, f'))

-- | Reciprocal-factorial stream: 1/0!, 1/1!, 1/2!, ...
recipFacts :: Stream Rational
recipFacts = mapS (\f -> 1 / fromInteger f) factsStream

-- | Approximate e via partial sums of 1/k!. Returns 'Nothing' for
--   non-positive depths.
eApprox :: Int -> Maybe Rational
eApprox n
  | n <= 0    = Nothing
  | otherwise =
      let ps = partialSums recipFacts
          xs = takeS n ps
      in case xs of
           [] -> Nothing
           _  -> Just (last xs)

-- | Render a Rational as a finite decimal expansion of n digits.
renderDecimal :: Int -> Rational -> String
renderDecimal n r =
  let intPart = floor r :: Integer
      frac    = r - fromInteger intPart
      ds      = takeNBaseDigits n 10 frac
  in show intPart ++ "." ++ concatMap show ds
  where
    takeNBaseDigits :: Int -> Integer -> Rational -> [Integer]
    takeNBaseDigits k _ _ | k <= 0 = []
    takeNBaseDigits k b x =
      let y  = x * fromInteger b
          d  = floor y :: Integer
          x' = y - fromInteger d
      in d : takeNBaseDigits (k - 1) b x'

-- | Carry-bisimulation demo: 0.999... vs 1.000... in base 10.
demoCarryBisim :: IO ()
demoCarryBisim = do
  let s9   = constS 9                       -- 0.99999...
      s10  = Cons 1 (constS 0)              -- 0.10000.. (= 0.1)
      sOne = Cons 0 (constS 9)              -- 0.0999... (= 0.1)
  putStrLn "Carry-bisimulation demo (base 10, 30 digits):"
  putStrLn $ "  approx 0.999... = " ++ show (approxBaseB 10 30 s9)
  putStrLn $ "  approx 0.10000.. = " ++ show (approxBaseB 10 30 s10)
  putStrLn $ "  approx 0.0999.. = " ++ show (approxBaseB 10 30 sOne)
  putStrLn $ "  carryEq 0.0999.. ~ 0.10000.. (interval semantics): "
           ++ show (carryEqUpTo 10 30 sOne s10)

main :: IO ()
main = do
  putStrLn "=========================================================="
  putStrLn "Coalgebraic Transcendentals: digit streams of pi and e"
  putStrLn "=========================================================="
  putStrLn ""

  -- Run cheap checks first so failure is fast.
  putStrLn "--- Equational proof checks ---"
  proofsOk <- P.runAllProofs 100

  putStrLn ""
  putStrLn "=========================================================="
  putStrLn "QuickCheck property suite"
  putStrLn "=========================================================="
  qcOk <- Q.runQuickCheckSuite

  -- Now expensive demos. Smaller Leibniz count keeps the demo
  -- responsive while still showing convergence.
  putStrLn ""
  let nLeibniz = 2000 :: Int
      nMachin  = 30 :: Int
      nE       = 25 :: Int
  putStrLn ("Leibniz pi (" ++ show nLeibniz ++ " terms):")
  case piLeibnizApprox nLeibniz of
    Just r  -> putStrLn ("  pi ~= " ++ renderDecimal 8 r)
    Nothing -> putStrLn "  (no terms)"
  putStrLn ""
  putStrLn ("Machin pi (" ++ show nMachin ++ " terms each arctan):")
  putStrLn ("  pi ~= " ++ renderDecimal 30 (piMachinApprox nMachin))
  putStrLn ""
  putStrLn ("Factorial-series e (" ++ show nE ++ " terms):")
  case eApprox nE of
    Just r  -> putStrLn ("  e  ~= " ++ renderDecimal 24 r)
    Nothing -> putStrLn "  (no terms)"
  putStrLn ""
  demoCarryBisim
  putStrLn ""

  if proofsOk && qcOk
    then putStrLn "ALL PROOFS AND PROPERTIES PASSED."
    else do
      putStrLn "SOME PROOFS OR PROPERTIES FAILED."
      exitFailure
