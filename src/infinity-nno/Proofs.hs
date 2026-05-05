-- |
-- Module      : Proofs
-- Description : Operational witnesses of NNO theorems: rigidity, contractibility,
-- and the canonical iso between two NNOs.
--
-- This file does not, of course, establish the contractibility of the NNO type
-- in HoTT (that needs a proof assistant with identity types and univalence),
-- but it produces operational counterparts of Lemma 2.3 (Rigidity), Lemma 2.5
-- (Lambek), and Proposition 7.3 (Canonical iso of NNOs) of Paper III.
--
-- The carrier 'Nat' is 'Natural' from "Numeric.Natural", so all functions
-- here are total on the NNO carrier and the equational proofs do not need
-- a "n < 0" escape clause.
module Proofs
  ( -- * Canonical iso (constrained to two NNO copies)
    canonicalIso
  , canonicalIsoInverse
  , canonicalIsoIsId
  , uniqueAutoIsId
    -- * Equational proofs (Theorem 3.2, Lemma 2.5, Prop 7.3)
  , proof_rec_zero
  , proof_rec_step
  , proof_lambek_roundtrip
  , proof_lambek_roundtrip_inv
  , proof_uniqueness
  , runEquationalProofs
  ) where

import NNO

-- | The canonical iso between two NNOs. Given a "second" NNO presented as
-- a pointed dynamical system @(Nat, zero2, succ2)@ with the SAME carrier
-- 'Nat', the canonical iso is @rec (PtEndo zero2 succ2)@. We require that
-- @zero2 = nnoZero@ and @succ2 = nnoSucc@ for the iso to be the identity
-- (Proposition 7.3); for non-canonical structure we still get a morphism
-- but it will not be the identity.
canonicalIso :: PtEndo Nat -> Nat -> Nat
canonicalIso = rec

-- | Inverse: this is the recursor on the FIRST NNO viewed as a pointed
-- dynamical system. For the standard self-NNO @(Nat, 0, succ)@ both legs
-- are 'rec (PtEndo 0 succ) = id', so the composition is the identity.
-- For non-canonical PS this function does not, in general, invert
-- 'canonicalIso'; the public test 'canonicalIsoIsId' documents the
-- self-NNO case explicitly.
canonicalIsoInverse :: Nat -> Nat
canonicalIsoInverse = rec (PtEndo nnoZero nnoSucc)

-- | Test that the canonical iso between (Nat, zero, succ) and itself is
-- the identity (Lemma 2.3 + Proposition 7.3).
canonicalIsoIsId :: Bool
canonicalIsoIsId =
  let n2  = PtEndo (nnoZero) nnoSucc -- the "second" NNO is the same NNO
      ns  = [0..50]
      eq1 = all (\n -> canonicalIso n2 n == n) ns
      eq2 = all (\n -> canonicalIsoInverse (canonicalIso n2 n) == n) ns
  in eq1 && eq2

-- | The NNO has trivial automorphism group: any endomorphism of (Nat,zero,succ)
-- in PtEndo agreeing with zero and succ must be the identity. This is forced
-- by uniqueness of the recursor.
uniqueAutoIsId :: Bool
uniqueAutoIsId =
  let pe       = PtEndo nnoZero nnoSucc
      autoFromUp :: Nat -> Nat
      autoFromUp = rec pe -- the recursor for the diagonal pointed system IS id
  in all (\n -> autoFromUp n == n) [0..50]

-- ---------------------------------------------------------------------------
-- Equational reasoning proofs (Theorem 3.2, Lemma 2.5, Prop 7.3 of Paper III)
-- ---------------------------------------------------------------------------

-- | Equational proof: 'rec (PtEndo x0 f) 0 = x0'.
--
-- Reasoning (by definition of 'rec'):
--
-- @
--   rec (PtEndo x0 f) 0
-- = { unfold rec; pattern match on 0 }
--   x0
-- @
--
-- This is the first equation of the universal property of the NNO
-- (Theorem 3.2). The function below is an executable witness: it returns
-- 'Right ()' iff the LHS and RHS are equal at the supplied basepoint.
proof_rec_zero :: (Eq a, Show a) => a -> (a -> a) -> Either String ()
proof_rec_zero x0 f
  | rec (PtEndo x0 f) 0 == x0 = Right ()
  | otherwise = Left $
      "proof_rec_zero failed: rec _ 0 = " ++ show (rec (PtEndo x0 f) 0)
      ++ " but expected " ++ show x0

-- | Equational proof: 'rec (PtEndo x0 f) (n + 1) = f (rec (PtEndo x0 f) n)'.
--
-- Reasoning (by definition of 'rec'; @n :: Nat@ so @n + 1 > 0@ always):
--
-- @
--   rec (PtEndo x0 f) (n + 1)
-- = { unfold rec on the successor branch }
--   f (rec (PtEndo x0 f) ((n + 1) - 1))
-- = { arithmetic on Natural }
--   f (rec (PtEndo x0 f) n)
-- @
--
-- This is the second equation of the universal property of the NNO
-- (Theorem 3.2). 'Nat = Natural' is non-negative by construction, so we
-- do not need a separate "out of carrier" clause.
proof_rec_step :: (Eq a, Show a) => a -> (a -> a) -> Nat -> Either String ()
proof_rec_step x0 f n
  | rec (PtEndo x0 f) (n + 1) == f (rec (PtEndo x0 f) n) = Right ()
  | otherwise = Left $
      "proof_rec_step failed at n = " ++ show n
      ++ ": LHS = " ++ show (rec (PtEndo x0 f) (n + 1))
      ++ " RHS = " ++ show (f (rec (PtEndo x0 f) n))

-- | Equational proof: Lambek's iso (Lemma 2.5).
--
-- The structure map for FX = 1+X on the NNO is
-- @[zero, succ] : 1 + N -> N@ which we model in Haskell as
-- 'nnoStructureMap :: Maybe Nat -> Nat'. Lambek's theorem says it is an
-- isomorphism with inverse 'nnoStructureInv'. We prove
-- @nnoStructureMap . nnoStructureInv = id@ here; the other roundtrip is
-- in 'proof_lambek_roundtrip_inv'.
--
-- Reasoning, on the @n > 0@ branch:
--
-- @
--   nnoStructureMap (nnoStructureInv n)
-- = { unfold nnoStructureInv on n > 0 }
--   nnoStructureMap (Just (n - 1))
-- = { unfold nnoStructureMap on Just }
--   nnoSucc (n - 1)
-- = { definition of nnoSucc }
--   (n - 1) + 1
-- = { arithmetic }
--   n
-- @
--
-- And on the @n = 0@ branch:
--
-- @
--   nnoStructureMap (nnoStructureInv 0)
-- = { unfold nnoStructureInv on 0 }
--   nnoStructureMap Nothing
-- = { unfold nnoStructureMap on Nothing }
--   nnoZero
-- = { definition of nnoZero }
--   0
-- @
proof_lambek_roundtrip :: Nat -> Either String ()
proof_lambek_roundtrip n
  | nnoStructureMap (nnoStructureInv n) == n = Right ()
  | otherwise = Left $
      "proof_lambek_roundtrip failed at n = " ++ show n

-- | Equational proof: the OTHER roundtrip,
-- @nnoStructureInv . nnoStructureMap = id_{1 + Nat}@.
--
-- Reasoning, on the 'Nothing' case:
--
-- @
--   nnoStructureInv (nnoStructureMap Nothing)
-- = { unfold nnoStructureMap on Nothing }
--   nnoStructureInv nnoZero
-- = { unfold nnoStructureInv on 0 }
--   Nothing
-- @
--
-- And on the 'Just k' case:
--
-- @
--   nnoStructureInv (nnoStructureMap (Just k))
-- = { unfold nnoStructureMap on Just }
--   nnoStructureInv (nnoSucc k)
-- = { definition of nnoSucc }
--   nnoStructureInv (k + 1)
-- = { unfold nnoStructureInv on k+1 > 0 }
--   Just ((k + 1) - 1)
-- = { arithmetic on Natural }
--   Just k
-- @
proof_lambek_roundtrip_inv :: Maybe Nat -> Either String ()
proof_lambek_roundtrip_inv mb
  | nnoStructureInv (nnoStructureMap mb) == mb = Right ()
  | otherwise = Left $
      "proof_lambek_roundtrip_inv failed at " ++ show mb

-- | Equational proof: uniqueness of the recursor (Theorem 3.2 uniqueness
-- clause). Concretely: the closed-form @h n = x0 + fromIntegral n@ and the
-- recursor @rec (PtEndo x0 succ)@ agree on every @n :: Nat@.
--
-- We prove @h n = rec (PtEndo x0 succ) n@ by induction on @n@:
--
-- Base case (@n = 0@):
--
-- @
--   h 0
-- = { definition of h }
--   x0 + 0
-- = { arithmetic }
--   x0
-- = { proof_rec_zero }
--   rec (PtEndo x0 succ) 0
-- @
--
-- Step case (@n -> n+1@), assuming @h n = rec (PtEndo x0 succ) n@:
--
-- @
--   h (n + 1)
-- = { definition of h }
--   x0 + (n + 1)
-- = { arithmetic }
--   (x0 + n) + 1
-- = { definition of h again }
--   h n + 1
-- = { IH }
--   rec (PtEndo x0 succ) n + 1
-- = { proof_rec_step }
--   rec (PtEndo x0 succ) (n + 1)
-- @
proof_uniqueness :: Integer -> Nat -> Either String ()
proof_uniqueness x0 n
  | h n == rec pe n = Right ()
  | otherwise = Left $
      "proof_uniqueness failed at x0 = " ++ show x0 ++ ", n = " ++ show n
  where
    pe = PtEndo x0 ((+ 1) :: Integer -> Integer)
    h k = x0 + toInteger k

-- | Run all equational proof checks at concrete witnesses and report.
runEquationalProofs :: IO ()
runEquationalProofs = do
  let succI :: Integer -> Integer
      succI = (+ 1)
      checks :: [(String, Either String ())]
      checks =
        [ ("proof_rec_zero (x0=0)",            proof_rec_zero (0 :: Integer) succI)
        , ("proof_rec_zero (x0=42)",           proof_rec_zero (42 :: Integer) succI)
        , ("proof_rec_step  (x0=0,  n=7)",     proof_rec_step  (0 :: Integer) succI 7)
        , ("proof_rec_step  (x0=11, n=20)",    proof_rec_step  (11 :: Integer) succI 20)
        , ("proof_lambek_roundtrip n=0",       proof_lambek_roundtrip 0)
        , ("proof_lambek_roundtrip n=1",       proof_lambek_roundtrip 1)
        , ("proof_lambek_roundtrip n=42",      proof_lambek_roundtrip 42)
        , ("proof_lambek_roundtrip_inv None",  proof_lambek_roundtrip_inv Nothing)
        , ("proof_lambek_roundtrip_inv Just0", proof_lambek_roundtrip_inv (Just 0))
        , ("proof_lambek_roundtrip_inv Just7", proof_lambek_roundtrip_inv (Just 7))
        , ("proof_uniqueness x0=0  n=10",      proof_uniqueness 0 10)
        , ("proof_uniqueness x0=7  n=33",      proof_uniqueness 7 33)
        , ("proof_uniqueness x0=99 n=50",      proof_uniqueness 99 50)
        ]
  mapM_ (\(name, r) ->
            case r of
              Right () -> putStrLn $ "  [OK]   " ++ name
              Left err -> putStrLn $ "  [FAIL] " ++ name ++ "  -- " ++ err)
        checks
