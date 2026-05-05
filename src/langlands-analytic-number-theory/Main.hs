{-# LANGUAGE ScopedTypeVariables #-}
-- | Driver demonstrating partial Riemann zeta sums and Dirichlet series.
--
-- This is a /computational prototype/ for the paper
-- "Toward HoTT-Native Analytic Number Theory" (Long 2026). It does NOT
-- implement HoTT-native zeta; it implements a finite-truncation classical
-- prototype that the prospective HoTT formalization should specialize to.
module Main where

import qualified Zeta
import qualified Dirichlet
import qualified Proofs
import qualified Properties

import Data.Complex (Complex (..), magnitude)
import Text.Printf (printf)

main :: IO ()
main = do
  putStrLn "=== HoTT-Native Analytic NT: classical prototype ==="
  demoZeta
  demoDirichlet
  demoEulerProduct
  demoProofs
  putStrLn ""
  Proofs.runAllProofs
  putStrLn ""
  Properties.runAllProperties

-- | Print partial sums of zeta(s) for various s.
demoZeta :: IO ()
demoZeta = do
  putStrLn "\n[Zeta partial sums]"
  let cases :: [Complex Double]
      cases = [2 :+ 0, 3 :+ 0, 4 :+ 0, 1.5 :+ 0, (1 :+ 14)]
      ns = [10, 100, 1000, 10000 :: Int]
  mapM_ (printRow ns) cases
  where
    printRow :: [Int] -> Complex Double -> IO ()
    printRow ns s = do
      printf "  zeta(%s):\n" (showC s)
      mapM_ (\n -> do
                let v = Zeta.partialZeta n s
                printf "    N=%-6d -> %s\n" n (showC v)
            ) ns

-- | Demonstrate Dirichlet convolution and basic operations.
demoDirichlet :: IO ()
demoDirichlet = do
  putStrLn "\n[Dirichlet convolution]"
  let one = Dirichlet.constSeries 1 :: Dirichlet.Series Double
      mu  = Dirichlet.mobius :: Dirichlet.Series Double
      -- Convolution mu * one should equal indicator(n=1).
      conv = Dirichlet.convolve mu one
  putStrLn "  (mu * 1)(n) for n=1..10:"
  mapM_ (\n -> printf "    n=%2d -> %f\n" n (Dirichlet.coeff conv n)) [1..10 :: Int]

-- | Demonstrate Euler product approximation.
demoEulerProduct :: IO ()
demoEulerProduct = do
  putStrLn "\n[Euler product approximation]"
  let s = 2 :+ 0 :: Complex Double
      truncations = [10, 100, 1000 :: Int]
  printf "  zeta(%s) via partial sum vs Euler product\n" (showC s)
  mapM_ (\nP -> do
             let ps = Zeta.partialZeta nP s
                 pe = Zeta.partialEulerProduct nP s
             printf "    N=%-6d sum=%s euler=%s diff=%g\n"
                 nP (showC ps) (showC pe)
                 (magnitude (ps - pe))
        ) truncations

-- | Demonstrate proof-style equational reasoning.
demoProofs :: IO ()
demoProofs = do
  putStrLn "\n[Equational proofs]"
  let s = 3 :+ 0 :: Complex Double
      n = 100 :: Int
      lhs = Proofs.lhsEulerIdentity n s
      rhs = Proofs.rhsEulerIdentity n s
  printf "  Euler identity check at s=%s, N=%d\n" (showC s) n
  printf "    LHS  (sum)   = %s\n" (showC lhs)
  printf "    RHS  (prod)  = %s\n" (showC rhs)
  printf "    |LHS-RHS|    = %g  (-> 0 as N -> oo)\n" (magnitude (lhs - rhs))

showC :: Complex Double -> String
showC (a :+ b)
  | b == 0    = printf "%.6f" a
  | otherwise = printf "%.6f%+.6fi" a b
