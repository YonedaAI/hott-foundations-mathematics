-- |
-- Module      : Main
-- Description : Demonstration of the Cauchy real prototype
-- Copyright   : (c) YonedaAI Research, 2026
--
-- This executable is a runnable demonstration accompanying the paper
-- /Cubical Higher Inductive--Inductive Types and the Cauchy Reals/.
-- It exercises the Haskell prototype of the Cauchy-real type, computes
-- approximants for sqrt(2), pi, e, and phi, and runs the QuickCheck
-- properties of "Properties".

module Main (main) where

import Data.Ratio (numerator, denominator)
import Reals (Rc(..), approxAt, addR, mulR)
import Approximants (sqrt2, piRc, eRc, goldenRatio)
import Properties (runAllProperties)
import Proofs
  ( proofCloseImpliesEqual
  , proofApproxClose
  , extendUniformly
  )

-- | Tabulate an approximation at a fixed precision.
tabulate :: Rational -> [(String, Rational)]
tabulate eps =
  [ ("sqrt(2)",  approxAt eps sqrt2)
  , ("pi",       approxAt eps piRc)
  , ("e",        approxAt eps eRc)
  , ("phi",      approxAt eps goldenRatio)
  , ("pi + e",   approxAt eps (addR piRc eRc))
  , ("pi * e",   approxAt eps (mulR piRc eRc))
  ]

-- | Render a row from 'tabulate'.  We deliberately do not print the
-- raw 'Rational' since the underlying numerator/denominator can have
-- many thousands of digits for high-precision approximants of
-- transcendentals (the rationals arising from Machin\'s arctan series
-- in particular).  A 'Double' rendering plus the rational\'s bit-size
-- gives a faithful but readable summary.
showRow :: (String, Rational) -> String
showRow (name, q) =
  let approx = fromRational q :: Double
      rsize  = ratBitSize q
  in name ++ "\t" ++ show approx
       ++ "\t(rational ~" ++ show rsize ++ " bits)"

-- | Approximate bit-size of a 'Rational': the sum of the
-- bit-lengths of the numerator and denominator.
ratBitSize :: Rational -> Int
ratBitSize q =
  let n = abs (numerator q)
      d = denominator q
  in intBits n + intBits d
  where
    intBits :: Integer -> Int
    intBits 0 = 1
    intBits k = go (abs k) 0
      where
        go 0 acc = acc
        go x acc = go (x `quot` 2) (acc + 1)

-- | Main entry point.
main :: IO ()
main = do
  putStrLn "=========================================================="
  putStrLn "Cubical HIIT Cauchy Reals -- Haskell prototype demonstration"
  putStrLn "=========================================================="
  putStrLn ""
  let precisions :: [Rational]
      precisions = [1 / 100, 1 / 10000, 1 / 1000000]
  mapM_ runAtPrecision precisions
  putStrLn ""
  putStrLn "----------------------------------------------------------"
  putStrLn "Equational-proof sample checks (Proofs.hs)"
  putStrLn "Each line below executes one finite sample of the"
  putStrLn "equational chain whose pen-and-paper proof is given as"
  putStrLn "a Haddock comment in Proofs.hs."
  putStrLn "----------------------------------------------------------"
  runProofChecks
  putStrLn ""
  putStrLn "----------------------------------------------------------"
  putStrLn "Running QuickCheck convergence properties..."
  putStrLn "----------------------------------------------------------"
  runAllProperties
  where
    runAtPrecision eps = do
      putStrLn ("Precision eps = " ++ show (fromRational eps :: Double))
      mapM_ (putStrLn . ("  " ++) . showRow) (tabulate eps)
      putStrLn ""

-- | Execute the value-level proof witnesses from 'Proofs'.
runProofChecks :: IO ()
runProofChecks = do
  -- Lemma 5.6: closeness of u and v witnessed at a sample of
  -- decreasing precisions.  Both arguments are the /same/ Cauchy
  -- real, so we expect closeness at all of them.
  let r1     = proofCloseImpliesEqual piRc piRc (1 / 1000)
      r2     = proofApproxClose sqrt2 (1 / 1000)
      lift   = (\x -> fromRational x :: Double)
      -- Pointwise limit operator: the last sample, which for a
      -- well-formed convergent sequence is the most accurate.
      lastL  :: [Double] -> Double
      lastL  = foldl (\_ x -> x) 0
      r3     = extendUniformly lift lastL piRc          -- exercises Lim
      r3rat  = extendUniformly lift lastL (Rat (3 / 2)) -- exercises Rat
  putStrLn ("  Lemma 5.6 (close implies equal): " ++ ok r1)
  putStrLn ("  Lemma 7.2 (approx is eps-close): " ++ ok r2)
  putStrLn ("  Thm  5.5 (uniform ext on Lim pi): " ++ show r3)
  putStrLn ("  Thm  5.5 (uniform ext on Rat 3/2): " ++ show r3rat)
  where
    ok :: Bool -> String
    ok True  = "PASS"
    ok False = "FAIL"
