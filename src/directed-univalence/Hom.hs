{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Module      : Hom
-- | Description : Hom-types and the funtohom map for the discrete universe.
-- |
-- | We implement the toy version of Theorem (GWB 2024):
-- |
-- |    funtohom : (A -> B) -> Hom_S(A,B)
-- |
-- | restricted to the discrete universe S. The map sends a function
-- | @f : A -> B@ to a hom carrier @FunHom@ that records the function
-- | itself; @homtofun@ then projects the function back out, so the
-- | round trip is the identity on functions (extensionally).
-- |
-- | Round 1 review fix: the previous toy lost the function and only
-- | preserved endpoints; this version carries @f@ explicitly so that
-- | extensional equality @homtofun (funtohom f) x == f x@ can be
-- | property-tested over generated inputs.

module Hom
  ( FunHom(..)
  , funtohom
  , homtofun
  , funtohomInverse
  , Pair(..)
  ) where

-- | A small helper carrier so we can package a "pair of types" through
-- the toy universe, together with a chosen function between them.
data Pair a b = Pair { leftEnd :: a, rightEnd :: b } deriving (Eq, Show)

-- | A "function hom" between domains @a@ and @b@ in the discrete
-- universe. The hom literally is a function plus a name for the
-- domain; this is the toy analogue of an extension type out of
-- @TwoI@ that lands in the universe of types.
data FunHom a b = FunHom
  { funHomDomain :: a            -- ^ A representative element of the domain
  , funHomAction :: a -> b       -- ^ The underlying function carried by the hom
  }

-- | Toy funtohom: package a function @f : a -> b@ together with a
-- representative domain element @a@ as a @FunHom a b@.
funtohom :: a -> (a -> b) -> FunHom a b
funtohom a f = FunHom { funHomDomain = a, funHomAction = f }

-- | Inverse direction: project the underlying function out of a
-- @FunHom@. This is total (no @Maybe@ needed) because @FunHom@ always
-- carries a function.
homtofun :: FunHom a b -> a -> b
homtofun = funHomAction

-- | Toy assertion that funtohom and homtofun are mutually inverse,
-- evaluated extensionally at a single point.
--
-- Given @a@, @x@ and @f@, this checks that
-- @homtofun (funtohom a f) x == f x@.
funtohomInverse :: (Eq b) => a -> a -> (a -> b) -> Bool
funtohomInverse a x f = homtofun (funtohom a f) x == f x
