{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

-- |
-- Module      : NNO
-- Description : Categorical natural numbers object (NNO) and Lambek's theorem
--
-- This module gives a Haskell encoding of the natural numbers object as
-- the initial pointed dynamical system. We model categories as the Hask
-- category and exhibit the universal property concretely.
--
-- The NNO is the triple (Nat, zero, succ) and the universal recursion
-- principle 'rec' produces, for any pointed dynamical system (a, x0, f),
-- the unique morphism h : Nat -> a with h zero = x0 and h . succ = f . h.
--
-- We also exhibit Lambek's theorem: the structure map [zero, succ] : 1+Nat -> Nat
-- is an isomorphism.
--
-- The carrier 'Nat' is a 'Natural' from "Numeric.Natural", which is
-- non-negative by construction. This rules out the spurious negative
-- inputs that would otherwise sneak past Lambek's iso.
module NNO
  ( -- * Pointed dynamical systems
    PtEndo (..)
    -- * The NNO
  , Nat
  , nnoZero
  , nnoSucc
  , nnoStructureMap
  , nnoStructureInv
    -- * Universal property
  , rec
  , recProp
    -- * Lambek's theorem (operational form)
  , lambekIso
    -- * Helpers
  , peano
  , peanoTo
  ) where

import Numeric.Natural (Natural)

-- | A pointed dynamical system: an object 'a', a basepoint 'x0', and an
-- endomorphism 'f' of 'a'. This is an object of the category PtEndo(Hask).
data PtEndo a = PtEndo
  { ptBase :: a
  , ptStep :: a -> a
  }

-- | The natural numbers, the carrier of the NNO. Modelled by 'Natural',
-- which is non-negative by construction; this prevents the recursor and
-- Lambek's iso from being applied to invalid inputs.
type Nat = Natural

-- | Basepoint of the NNO.
nnoZero :: Nat
nnoZero = 0

-- | Successor of the NNO.
nnoSucc :: Nat -> Nat
nnoSucc = (+ 1)

-- | The structure map of the NNO viewed as an F-algebra for FX = 1+X
-- (modelled here as 'Maybe X', where 'Nothing' is the unit and 'Just x' is X).
nnoStructureMap :: Maybe Nat -> Nat
nnoStructureMap Nothing  = nnoZero
nnoStructureMap (Just n) = nnoSucc n

-- | Inverse of the structure map (Lambek's theorem). Total on the carrier:
-- 'Nat = Natural' has no negative elements, so the only case besides 0 is
-- @n > 0@.
nnoStructureInv :: Nat -> Maybe Nat
nnoStructureInv 0 = Nothing
nnoStructureInv n = Just (n - 1)

-- | The unique morphism Nat -> a induced by the NNO universal property,
-- given a pointed dynamical system (a, x0, f). Total on 'Nat'.
rec :: forall a. PtEndo a -> Nat -> a
rec (PtEndo x0 f) = go
  where
    go :: Nat -> a
    go 0 = x0
    go n = f (go (n - 1))

-- | The two universal-property identities, packaged as a pair of booleans
-- when 'a' has equality.
recProp
  :: Eq a
  => PtEndo a
  -> Nat
  -> (Bool, Bool) -- ^ (rec _ 0 = x0, rec _ (succ n) = f (rec _ n))
recProp pe@(PtEndo x0 f) n =
  ( rec pe 0 == x0
  , rec pe (n + 1) == f (rec pe n)
  )

-- | Lambek's iso, presented operationally: roundtripping through the
-- structure map and its inverse. Total on 'Nat'.
lambekIso :: Nat -> Bool
lambekIso n =
  let mb = nnoStructureInv n
      n' = nnoStructureMap mb
  in n == n'

-- | Build the n-th numeral by iteration (operational Peano structure).
peano :: Int -> Nat
peano k
  | k < 0     = error "peano: negative numeral undefined"
  | otherwise = iterate nnoSucc nnoZero !! k

-- | Test that 'peano' agrees with 'rec' on the canonical pointed
-- dynamical system (Nat, zero, succ).
peanoTo :: Int -> Bool
peanoTo k
  | k < 0 = True
  | otherwise = peano k == rec (PtEndo nnoZero nnoSucc) (fromIntegral k)
