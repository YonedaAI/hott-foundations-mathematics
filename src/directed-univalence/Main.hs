-- | Module      : Main
-- | Description : Demonstration of directed univalence theorems (toy).
-- |
-- | This Main entry point exhibits the toy-model content of the main
-- | theorems surveyed in the paper "Directed Univalence: From Riehl-
-- | Shulman to a Complete Principle":
-- |
-- |   1. The directed interval and its endpoints (Section 3).
-- |   2. Hom-types and identity morphisms (Section 3).
-- |   3. The Segal predicate: composition (Section 3).
-- |   4. The discrete universe and its directed univalence (Section 5).
-- |   5. Functoriality of hom along functions (Section 4).
-- |
-- | The output prints a small report enumerating each theorem and its
-- | (toy) verification status, and runs all QuickCheck properties and
-- | executable equational proofs.

module Main where

import Directed
import Hom
import Properties
import Proofs
import Data.List (intercalate)

-- | Smart constructor wrapper that errors if the endpoint invariant
-- fails. Used only with manifestly valid endpoints in the demo.
mustHom :: (Eq a, Show a) => a -> a -> (TwoI -> a) -> Hom a
mustHom a b f = case mkHom a b f of
  Just h  -> h
  Nothing -> error $ "mustHom: invariant violated at "
                      ++ show a ++ " -> " ++ show b

main :: IO ()
main = do
  putStrLn "============================================================"
  putStrLn " Directed Univalence: Toy Demonstration"
  putStrLn " (Riehl-Shulman 2017 / Gratzer-Weinberger-Buchholtz 2024)"
  putStrLn "============================================================"
  putStrLn ""

  -- 1. Directed interval
  putStrLn "[1] Directed interval TwoI:"
  putStrLn ("    I0 = " ++ show I0)
  putStrLn ("    I1 = " ++ show I1)
  putStrLn ("    I0 < I1 :  " ++ show (I0 < I1))
  putStrLn ""

  -- 2. Hom types and identity
  putStrLn "[2] Identity hom over Disc Int:"
  let idHom = identity (Disc (3 :: Int))
  putStrLn ("    src id = " ++ show (src idHom))
  putStrLn ("    tgt id = " ++ show (tgt idHom))
  putStrLn ("    shape I0 = " ++ show (shape idHom I0))
  putStrLn ("    shape I1 = " ++ show (shape idHom I1))
  putStrLn ("    identityIsTrivial 3: " ++ show (identityIsTrivial (Disc (3 :: Int))))
  putStrLn ""

  -- 3. Composition (Segal) - now partial
  putStrLn "[3] Composition in Segal type Disc Int:"
  let f = mustHom (Disc (1 :: Int)) (Disc 2) (\t -> case t of I0 -> Disc 1; I1 -> Disc 2)
  let g = mustHom (Disc 2)          (Disc 3) (\t -> case t of I0 -> Disc 2; I1 -> Disc 3)
  case compose g f of
    Just gf -> do
      putStrLn ("    src (g . f) = " ++ show (src gf))
      putStrLn ("    tgt (g . f) = " ++ show (tgt gf))
    Nothing -> putStrLn "    compose returned Nothing (unexpected)"
  -- Demonstrate the partiality: non-composable pair
  let g' = mustHom (Disc (5 :: Int)) (Disc 6) (\t -> case t of I0 -> Disc 5; I1 -> Disc 6)
  case compose g' f of
    Nothing -> putStrLn "    compose for non-composable pair: Nothing (correct)"
    Just _  -> putStrLn "    compose for non-composable pair: UNEXPECTEDLY Just"
  putStrLn ""

  -- 4. Associativity
  putStrLn "[4] Associativity of composition (Segal):"
  let assoc = composeAssociative (Disc (0 :: Int)) (Disc 1) (Disc 2) (Disc 3)
  putStrLn ("    composeAssociative 0->1->2->3 : " ++ show assoc)
  putStrLn ""

  -- 5. Discrete universe and directed univalence
  putStrLn "[5] Directed univalence for the discrete universe (toy):"
  putStrLn ("    fromEq 5 5 : "
            ++ show (fmap (\h -> (src h, tgt h)) (fromEq (Disc (5 :: Int)) (Disc 5))))
  putStrLn ("    fromEq 5 7 : "
            ++ show (fmap (\h -> (src h, tgt h)) (fromEq (Disc (5 :: Int)) (Disc 7))))
  putStrLn ("    discUnivalenceToy 5 5 : " ++ show (discUnivalenceToy (Disc (5 :: Int)) (Disc 5)))
  putStrLn ("    discUnivalenceToy 5 7 : " ++ show (discUnivalenceToy (Disc (5 :: Int)) (Disc 7)))
  putStrLn ""

  -- 6. funtohom (now carries the function genuinely)
  putStrLn "[6] funtohom for the discrete universe (toy):"
  let f6 = (+1) :: Int -> Int
  putStrLn ("    funtohomInverse 5 5 (+1) : " ++ show (funtohomInverse (5 :: Int) 5 f6))
  putStrLn ("    homtofun (funtohom 5 (+1)) 10 : "
              ++ show (homtofun (funtohom (5 :: Int) f6) 10))
  putStrLn ""

  -- 7. Functoriality
  putStrLn "[7] Functoriality of hom along a function:"
  let h7 = mustHom (1 :: Int) 4 (\t -> case t of I0 -> 1; I1 -> 4)
  let h7' = functoriality (* 10) h7
  putStrLn ("    Hom_Int(1,4) -> Hom_Int(10,40):  src=" ++ show (src h7') ++ ", tgt=" ++ show (tgt h7'))
  putStrLn ""

  -- 8. Witness predicates
  putStrLn "[8] Witness predicates (isSegal, isRezk, isDisc):"
  let f8 = identity (Disc (1 :: Int))
  putStrLn ("    isSegalWitness f f : " ++ show (isSegalWitness f8 f8))
  putStrLn ("    isRezkWitness f    : " ++ show (isRezkWitness f8))
  putStrLn ("    isDiscWitness f    : " ++ show (isDiscWitness f8))
  putStrLn ""

  -- 9. Equational proof checks
  putStrLn "[9] Equational proof checks (executable):"
  let proofResults =
        [ ("proof_identityFixesEndpoints (5)", proof_identityFixesEndpoints (5 :: Int))
        , ("proof_identityShapeConstant  (7)", proof_identityShapeConstant (7 :: Int))
        , ("proof_composeMatchesEndpoints (1,2,3)", proof_composeMatchesEndpoints (1 :: Int) 2 3)
        , ("proof_associativity (0,1,2,3)",  proof_associativity (0 :: Int) 1 2 3)
        , ("proof_functorialityIdentityLaw (+1) 4", proof_functorialityIdentityLaw ((+1) :: Int -> Int) 4)
        , ("proof_funtohomRoundTrip 5 10 (+1)", proof_funtohomRoundTrip (5 :: Int) 10 ((+1) :: Int -> Int))
        , ("proof_discUnivalence 5 5", proof_discUnivalence (Disc (5 :: Int)) (Disc 5))
        , ("proof_discUnivalence 5 7", proof_discUnivalence (Disc (5 :: Int)) (Disc 7))
        ]
  mapM_ (\(n, r) -> putStrLn ("    " ++ n ++ ": " ++ show r)) proofResults
  let failed = [ n | (n, Left _) <- proofResults ]
  if null failed
    then putStrLn "    all equational proof checks PASSED"
    else putStrLn ("    FAILED: " ++ intercalate ", " failed)
  putStrLn ""

  -- 10. QuickCheck property tests
  runAllProperties
  putStrLn ""

  putStrLn "============================================================"
  putStrLn " All toy demonstrations complete."
  putStrLn " See papers/latex/directed-univalence.tex for the full account."
  putStrLn "============================================================"
