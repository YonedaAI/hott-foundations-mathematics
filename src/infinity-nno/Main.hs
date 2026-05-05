-- |
-- Module      : Main
-- Description : Demonstrations for "Higher-Categorical Natural Numbers Objects".
--
-- Runs the operational checks that accompany the paper:
-- * NNO universal property (rec satisfies the two equations).
-- * Lambek's iso ([zero,succ] is invertible).
-- * Canonical iso between any two NNOs is the identity (rigidity).
-- * Trivial automorphisms of the NNO.
module Main where

import qualified NNO
import qualified Properties as P
import qualified Proofs

banner :: String -> IO ()
banner s = do
  putStrLn ""
  putStrLn (replicate (length s + 4) '=')
  putStrLn ("  " ++ s)
  putStrLn (replicate (length s + 4) '=')

main :: IO ()
main = do
  banner "Higher-Categorical NNO: operational demonstrations"

  banner "1. NNO universal property"
  let pe = NNO.PtEndo (0 :: Integer) (+ 1)
  putStrLn $ "rec _ 0 = "  ++ show (NNO.rec pe 0)
  putStrLn $ "rec _ 5 = "  ++ show (NNO.rec pe 5)
  putStrLn $ "rec _ 10 = " ++ show (NNO.rec pe 10)

  banner "2. Lambek's iso"
  let lambeks = [NNO.lambekIso n | n <- [0..10 :: NNO.Nat]]
  putStrLn $ "lambekIso [0..10]: " ++ show lambeks

  banner "3. Properties module suite"
  putStrLn $ "all properties pass: " ++ show P.runChecks

  banner "4. Concrete NNO-driven primitive recursion: factorial"
  let fact :: Integer -> Integer
      fact n = snd (NNO.rec P.factPS (fromInteger n))
  mapM_ (\n -> putStrLn $ "fact " ++ show n ++ " = " ++ show (fact n)) [0,1,2,3,4,5,6 :: Integer]

  banner "5. Rigidity / canonical iso"
  putStrLn $ "canonical iso to itself is the identity: " ++ show Proofs.canonicalIsoIsId
  putStrLn $ "automorphisms of (Nat, zero, succ) are trivial: " ++ show Proofs.uniqueAutoIsId

  banner "6. QuickCheck properties (universal property up to iso)"
  qcOk <- P.runQuickChecks
  putStrLn $ "all QuickCheck properties pass: " ++ show qcOk

  banner "7. Equational proofs (executable checks)"
  Proofs.runEquationalProofs

  banner "Done."
