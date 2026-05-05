{-# LANGUAGE GADTs #-}
{-# LANGUAGE FlexibleInstances #-}
-- | Main demonstration for the etcs-izf-folds paper.
--
-- This module ties together ETCS axioms (encoded as type classes), a toy
-- FOLDS signature for categories, and the invariance check verified using
-- QuickCheck-style property testing.
module Main where

import qualified ETCS
import qualified FOLDS
import qualified Properties
import qualified Proofs

main :: IO ()
main = do
  putStrLn "=== ETCS, IZF, FOLDS demonstration ==="
  putStrLn ""
  putStrLn "ETCS axioms summary:"
  ETCS.demoAxioms
  putStrLn ""
  putStrLn "FOLDS signature for categories:"
  FOLDS.demoSignature
  putStrLn ""
  putStrLn "Invariance check (small finite cats, equivalences):"
  Properties.runInvarianceTests
  putStrLn ""
  putStrLn "Structural lemmas:"
  Proofs.demoStructuralLemmas
  putStrLn ""
  putStrLn "All demos complete."
