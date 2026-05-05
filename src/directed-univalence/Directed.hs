{-# LANGUAGE GADTs #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

-- | Module      : Directed
-- | Description : Toy directed types via type-classes.
-- |
-- | We implement a toy model of Riehl-Shulman simplicial type theory:
-- |   * The directed interval @TwoI@ with endpoints 0,1.
-- |   * Hom-types Hom_A(a,b) as functions TwoI -> A with prescribed endpoints.
-- |   * Segal predicate (composition).
-- |   * Rezk predicate (equivalences = identities).
-- |   * Discrete predicate (every morphism invertible).
-- |
-- | This is *not* a faithful implementation of STT; it is a toy that exhibits
-- | the algebraic content so that examples can be machine-checked.
-- |
-- | Soundness improvements (Round 1 review):
-- |   * The endpoint invariant @shape I0 == src && shape I1 == tgt@ is
-- |     enforced by hiding the @Hom@ constructor and exposing only
-- |     @mkHom@ which validates the invariant.
-- |   * Composition is partial: @compose g f@ returns @Nothing@ when
-- |     @tgt f /= src g@ rather than silently fabricating an identity.
-- |   * @invertibleToId@ now demands both composites equal the identity
-- |     hom extensionally, not merely on endpoints.

module Directed
  ( TwoI(..)
  , Hom
  , src
  , tgt
  , shape
  , mkHom
  , identity
  , functoriality
  , eqHom
  , Segal(..)
  , Rezk(..)
  , Discrete(..)
  , Universe(..)
  , Disc(..)
  ) where

-- | The directed interval with two endpoints.
data TwoI = I0 | I1
  deriving (Eq, Show, Ord)

-- | A hom-type Hom_A(a,b): a function 2 -> A with f(0)=a, f(1)=b.
--
-- The constructor is intentionally hidden; use @mkHom@ to build values
-- that respect the endpoint invariant @shape I0 == src@ and
-- @shape I1 == tgt@. Internally trusted helpers (@identity@,
-- @functoriality@, @compose@) construct values that automatically
-- satisfy this invariant.
data Hom a = Hom
  { src    :: a
  , tgt    :: a
  , shape  :: TwoI -> a
  }

-- | Smart constructor enforcing the endpoint invariant.
--
-- @mkHom a b f@ succeeds with @Just (Hom a b f)@ exactly when
-- @f I0 == a@ and @f I1 == b@. Otherwise it returns @Nothing@.
mkHom :: Eq a => a -> a -> (TwoI -> a) -> Maybe (Hom a)
mkHom a b f
  | f I0 == a && f I1 == b = Just (Hom { src = a, tgt = b, shape = f })
  | otherwise              = Nothing

-- | Identity morphism Hom_A(a,a). The shape is constant at @a@.
identity :: a -> Hom a
identity a = Hom { src = a, tgt = a, shape = const a }

-- | Functoriality of @Hom@ along a function.
--
-- A function @f : a -> b@ induces @Hom_A(a,b) -> Hom_B(f a, f b)@.
-- This is the action of @Hom@ on morphisms in the directed semantics
-- (Section 4 of the paper).
--
-- The endpoint invariant is preserved automatically:
-- if @shape h I0 == src h@ then @f (shape h I0) == f (src h)@.
functoriality :: (a -> b) -> Hom a -> Hom b
functoriality f h = Hom
  { src   = f (src h)
  , tgt   = f (tgt h)
  , shape = f . shape h
  }

-- | Extensional equality of hom-types over the (toy) interval.
--
-- Because @TwoI@ has only two inhabitants, comparing the values at
-- @I0@ and @I1@ together with @src@ and @tgt@ is sufficient. (The
-- endpoint invariant guarantees the @src@/@shape I0@ and @tgt@/@shape I1@
-- agreement, but we compare all four fields for robustness against
-- callers who use the smart constructor incorrectly.)
eqHom :: Eq a => Hom a -> Hom a -> Bool
eqHom h k =
  src h == src k
    && tgt h == tgt k
    && shape h I0 == shape k I0
    && shape h I1 == shape k I1

-- | The Segal predicate: composition of hom-types is well-defined when
-- the inner endpoints match.
--
-- In STT this is the assertion that the canonical map
--   Hom_A(a,b) x Hom_A(b,c) -> {Lambda^2_1 fillers}
-- is an equivalence. Concretely @compose g f@ returns @Just (g . f)@
-- when @tgt f == src g@, and @Nothing@ otherwise.
class Segal a where
  compose :: Hom a -> Hom a -> Maybe (Hom a)

-- | The Rezk predicate: invertible morphisms are identities.
--
-- If alpha : Hom_A(a,b) is invertible (has alpha^{-1} : Hom_A(b,a) with
-- alpha o alpha^{-1} = id_b and alpha^{-1} o alpha = id_a), then a = b.
class Segal a => Rezk a where
  invertibleToId :: Hom a -> Hom a -> Maybe (a, a)
  -- ^ Given alpha and a candidate beta, succeed with @Just (a,a)@ when
  -- both composites are defined and extensionally equal to the
  -- identity hom on the corresponding endpoint, AND
  -- @src alpha == tgt alpha@. Otherwise @Nothing@.

-- | A type is discrete if every hom is invertible.
--
-- Equivalently: (a = b) ~ Hom_A(a,b) is an equivalence. We expose both
-- directions of the equivalence:
--
-- @fromEq a b@ produces the (unique) hom from @a@ to @b@ when @a == b@.
-- @toEq h@ produces the equality @src h == tgt h@ as @Just (src h, tgt h)@
-- when the hom is the identity, and @Nothing@ otherwise.
--
-- The canonical law of directed univalence on a discrete type is:
--   * @fromEq a a == Just (identity a)@ (extensionally);
--   * @fromEq a b == Nothing@ for @a /= b@;
--   * @toEq (identity a) == Just (a, a)@;
--   * @fromEq a b == Just h@ implies @toEq h == Just (a, b)@ and @a == b@.
class Eq a => Discrete a where
  fromEq :: a -> a -> Maybe (Hom a)
  -- ^ When a = b, produce the (unique) hom from a to b.

  toEq   :: Hom a -> Maybe (a, a)
  -- ^ Project a hom in the discrete universe back to the equality
  -- witnessed by @(src h, tgt h)@. Returns @Nothing@ if the hom is
  -- not actually an identity (i.e. @src h /= tgt h@).

-- | The toy universe of types is represented by a phantom kind tag.
data Universe = Universe deriving (Show)

-- | The toy "discrete universe" : phantom marker for discrete types.
data Disc a = Disc { runDisc :: a } deriving (Eq, Show)

-- | Composition for the discrete universe is partial.
--
-- We follow the convention @compose g f = g . f@ (right-to-left),
-- so @f@ runs first and @g@ runs second.
instance Eq a => Segal (Disc a) where
  compose g f
    | tgt f == src g =
        Just Hom
          { src   = src f
          , tgt   = tgt g
          , shape = sh
          }
    | otherwise = Nothing
    where
      sh I0 = src f
      sh I1 = tgt g

-- | Rezk: a candidate inverse @beta@ certifies that @alpha@ is an
-- identity exactly when both composites @beta . alpha@ and @alpha . beta@
-- are defined and extensionally equal to the identity at the appropriate
-- object, AND @src alpha == tgt alpha@.
instance Eq a => Rezk (Disc a) where
  invertibleToId alpha beta =
    case (compose beta alpha, compose alpha beta) of
      (Just bAlpha, Just aBeta)
        | src alpha == tgt alpha
        , eqHom bAlpha (identity (src alpha))
        , eqHom aBeta  (identity (src beta))
        -> Just (src alpha, tgt alpha)
      _ -> Nothing

instance Eq a => Discrete (Disc a) where
  fromEq a b
    | a == b    = Just (identity a)
    | otherwise = Nothing

  toEq h
    | src h == tgt h = Just (src h, tgt h)
    | otherwise      = Nothing
