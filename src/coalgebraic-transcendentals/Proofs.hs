{-# OPTIONS_GHC -Wall #-}

-- | Equational reasoning checks for stream identities.
--
--   These are NOT machine-checked formal proofs (Haskell is not a
--   proof assistant). They are executable witnesses that compare
--   a stream-side expression with an independent finite-list
--   reference implementation, providing a strong empirical
--   confirmation of each equation up to a chosen depth.
--
--   Each `proof_*` function returns 'Right ()' when the identity
--   holds at the supplied depth and 'Left' with a diagnostic if
--   not.
module Proofs
  ( proofMapId
  , proofMapCompose
  , proofZipFlip
  , proofConstHead
  , proofConstTail
  , runAllProofs
  ) where

import Streams (Stream(..), constS, takeS, mapS, zipWithS, natsFrom)

-- | Equational identity: takeS n (mapS id s) = takeS n s.
--
--     takeS n (mapS id s)
--   = { definition of mapS, unfold }
--     map id (takeS n s)
--   = { id law for lists }
--     takeS n s
--   QED.
proofMapId :: Int -> Either String ()
proofMapId n =
  let s   = natsFrom 0
      lhs = takeS n (mapS id s)
      rhs = takeS n s
  in if lhs == rhs
       then Right ()
       else Left ("proofMapId failed at n=" ++ show n)

-- | Equational identity:
--   takeS n (mapS (g . f) s) = map (g . f) (takeS n s).
--
--     takeS n (mapS (g . f) s)
--   = { mapS unfolds to fmap; commutes with takeS }
--     map (g . f) (takeS n s)
--   QED.
proofMapCompose :: Int -> Either String ()
proofMapCompose n =
  let s   = natsFrom 0
      f, g :: Integer -> Integer
      f = (+ 1)
      g = (* 3)
      lhs = takeS n (mapS (g . f) s)
      rhs = map (g . f) (takeS n s)   -- independent reference
  in if lhs == rhs
       then Right ()
       else Left ("proofMapCompose failed at n=" ++ show n)

-- | Equational identity (independent of zipWithS itself):
--   takeS n (zipWithS f s t) = zipWith f (takeS n s) (takeS n t).
--
--   Uses the non-commutative subtraction so the identity is
--   sensitive to argument order. The reference is the list-level
--   zipWith, not zipWithS, so this genuinely tests zipWithS
--   against an independent specification.
proofZipFlip :: Int -> Either String ()
proofZipFlip n =
  let s   = natsFrom 0
      t   = natsFrom 7
      f :: Integer -> Integer -> Integer
      f   = (-)
      lhs = takeS n (zipWithS f s t)
      rhs = zipWith f (takeS n s) (takeS n t)   -- independent reference
  in if lhs == rhs
       then Right ()
       else Left ("proofZipFlip failed at n=" ++ show n)

-- | Identity: hd (constS a) = a.
proofConstHead :: Int -> Either String ()
proofConstHead a =
  let Cons x _ = constS a
  in if x == a
       then Right ()
       else Left ("proofConstHead failed for a=" ++ show a)

-- | Identity: takeS n (tl (constS a)) = takeS n (constS a).
proofConstTail :: Int -> Either String ()
proofConstTail n =
  let s          = constS (42 :: Int)
      Cons _ s'  = s
      lhs        = takeS n s'
      rhs        = takeS n s
  in if lhs == rhs
       then Right ()
       else Left ("proofConstTail failed at n=" ++ show n)

-- | Run every executable proof and report; returns True iff all
--   identities hold at the given depth.
runAllProofs :: Int -> IO Bool
runAllProofs n = do
  let cases :: [(String, Either String ())]
      cases =
        [ ("mapId",       proofMapId n)
        , ("mapCompose",  proofMapCompose n)
        , ("zipFlip",     proofZipFlip n)
        , ("constHead",   proofConstHead 7)
        , ("constTail",   proofConstTail n)
        ]
      report (name, Right ()) = do
        putStrLn ("  [OK] " ++ name)
        return True
      report (name, Left err) = do
        putStrLn ("  [FAIL] " ++ name ++ ": " ++ err)
        return False
  results <- mapM report cases
  return (and results)
