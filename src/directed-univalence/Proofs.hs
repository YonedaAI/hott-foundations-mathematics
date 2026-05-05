{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE ScopedTypeVariables #-}

-- | Module      : Proofs
-- | Description : Worked equational proof sketches over the toy directed
-- |               universe, with executable verification functions.
-- |
-- | We expose proof-assertion functions corresponding to the main theorems
-- | surveyed in the paper:
-- |   * Theorem (Identity is unique): id_a is the unique self-loop with
-- |     constant shape (Section 3).
-- |   * Theorem (Composition associativity, Segal world, Section 3).
-- |   * Theorem (Discrete univalence, toy form, Section 5): for a discrete
-- |     type A, hom A a b iff a = b.
-- |   * Theorem (Functoriality, Section 4): functoriality preserves
-- |     identities; F (id_a) = id_{F a}.
-- |   * Theorem (funtohom round trip, GWB 2024, Section 4 of paper).
-- |
-- | Each "proof_*" function executes the equational chain at concrete
-- | values and returns Right () on success or Left msg on failure.
-- |
-- | Round 1 review fixes:
-- |   * 'composeAssociative' now compares full hom values via 'eqHom',
-- |     not just endpoints.
-- |   * 'discUnivalenceToy' now genuinely inspects 'fromEq' rather than
-- |     evaluating to a tautology.
-- |   * Composition is partial; we propagate Maybe through the proofs.

module Proofs
  ( -- * High level booleans (used by Main and Properties)
    identityIsTrivial
  , composeAssociative
  , discUnivalenceToy
    -- * Executable equational proofs
  , proof_identityFixesEndpoints
  , proof_identityShapeConstant
  , proof_composeMatchesEndpoints
  , proof_associativity
  , proof_functorialityIdentityLaw
  , proof_funtohomRoundTrip
  , proof_discUnivalence
  ) where

import Directed
import Hom (funtohom, homtofun)

-- ---------------------------------------------------------------------------
-- High-level boolean wrappers used by the demonstration in Main.
-- ---------------------------------------------------------------------------

-- | Identity hom is exactly the constant shape at @a@.
--
-- Proof sketch (equational):
--
-- @
--    src (identity a)
--  = { definition of identity }
--    a
-- @
--
-- @
--    tgt (identity a)
--  = { definition of identity }
--    a
-- @
--
-- @
--    shape (identity a) i
--  = { definition of identity, shape = const a }
--    a
-- @
identityIsTrivial :: (Eq a) => a -> Bool
identityIsTrivial a =
  let h = identity a
  in src h == a && tgt h == a && shape h I0 == a && shape h I1 == a

-- | Associativity of composition (in the discrete universe Segal toy).
--
-- Proof sketch: for @f : a -> b@, @g : b -> c@, @h : c -> d@,
-- @
--    compose (compose h g) f
--  = { definition of compose, endpoints align }
--    Hom { src = a, tgt = d, ... }
--  = { definition of compose, endpoints align }
--    compose h (compose g f)
-- @
-- We check extensional equality of full hom values via 'eqHom'.
-- Since composition is partial we require both sides to be 'Just'.
composeAssociative :: forall a. (Eq a) => Disc a -> Disc a -> Disc a -> Disc a -> Bool
composeAssociative w x y z =
  let mf = mkHom w x (\i -> case i of I0 -> w; I1 -> x)
      mg = mkHom x y (\i -> case i of I0 -> x; I1 -> y)
      mh = mkHom y z (\i -> case i of I0 -> y; I1 -> z)
  in case (mf, mg, mh) of
       (Just f, Just g, Just h) ->
         case (compose h g, compose g f) of
           (Just hg, Just gf) ->
             case (compose hg f, compose h gf) of
               (Just lhs, Just rhs) -> eqHom lhs rhs
               _                    -> False
           _ -> False
       _ -> False

-- | The toy form of directed univalence for the discrete universe:
--
-- For all @a, b@:
--   * if @a == b@ then @fromEq a b == Just (identity a)@ (extensionally);
--   * if @a /= b@ then @fromEq a b == Nothing@.
--
-- We genuinely inspect 'fromEq' rather than wrapping a tautology.
discUnivalenceToy :: (Discrete a) => a -> a -> Bool
discUnivalenceToy a b =
  case fromEq a b of
    Just h  -> a == b
                 && eqHom h (identity a)
    Nothing -> a /= b

-- ---------------------------------------------------------------------------
-- Executable equational proofs.
--
-- Each "proof_*" function evaluates the LHS and RHS of an equation derived
-- in the comment block above it, and returns Right () on success or
-- Left explaining the discrepancy.
-- ---------------------------------------------------------------------------

-- | Proof: src/tgt of @identity a@ both equal @a@.
--
-- @
--    src (identity a) , tgt (identity a)
--  = { definition of identity }
--    a , a
-- @
proof_identityFixesEndpoints :: (Eq a, Show a) => a -> Either String ()
proof_identityFixesEndpoints a =
  let h = identity a
  in if src h == a && tgt h == a
       then Right ()
       else Left $ "identity fixes endpoints: src=" ++ show (src h)
                     ++ ", tgt=" ++ show (tgt h)
                     ++ ", expected " ++ show a

-- | Proof: shape of identity is constant.
--
-- @
--    shape (identity a) I0
--  = { definition of identity, shape = const a }
--    a
--  = { definition of identity, shape = const a }
--    shape (identity a) I1
-- @
proof_identityShapeConstant :: (Eq a, Show a) => a -> Either String ()
proof_identityShapeConstant a =
  let h = identity a
  in if shape h I0 == a && shape h I1 == a
       then Right ()
       else Left $ "identity shape: I0=" ++ show (shape h I0)
                     ++ ", I1=" ++ show (shape h I1)

-- | Proof: when @tgt f == src g@ in the discrete world,
-- @compose g f@ has endpoints @(src f, tgt g)@ and is defined.
--
-- @
--    compose g f
--  = { definition of compose for Disc, endpoints align }
--    Just (Hom { src = src f, tgt = tgt g, ... })
-- @
proof_composeMatchesEndpoints :: (Eq a, Show a) => a -> a -> a -> Either String ()
proof_composeMatchesEndpoints a b c =
  let mf = mkHom (Disc a) (Disc b) (\i -> case i of I0 -> Disc a; I1 -> Disc b)
      mg = mkHom (Disc b) (Disc c) (\i -> case i of I0 -> Disc b; I1 -> Disc c)
  in case (mf, mg) of
       (Just f, Just g) ->
         case compose g f of
           Just gf
             | src gf == Disc a && tgt gf == Disc c -> Right ()
             | otherwise ->
                 Left $ "compose endpoints: got (" ++ show (src gf) ++ ", "
                          ++ show (tgt gf) ++ "), expected ("
                          ++ show (Disc a) ++ ", " ++ show (Disc c) ++ ")"
           Nothing -> Left "compose returned Nothing for matched endpoints"
       _ -> Left "mkHom returned Nothing for valid endpoints"

-- | Proof: associativity of composition (extensionally via 'eqHom').
--
-- @
--    (h . g) . f
--  = { definition of compose, twice }
--    Hom { src = src f, tgt = tgt h, ... }
--  = { definition of compose, twice }
--    h . (g . f)
-- @
proof_associativity :: (Eq a, Show a) => a -> a -> a -> a -> Either String ()
proof_associativity w x y z =
  if composeAssociative (Disc w) (Disc x) (Disc y) (Disc z)
    then Right ()
    else Left $ "associativity failed for " ++ show (w, x, y, z)

-- | Proof: functoriality preserves identity.
--
-- @
--    functoriality f (identity a)
--
--    src side:
--    src (functoriality f (identity a))
--  = { definition of functoriality }
--    f (src (identity a))
--  = { definition of identity }
--    f a
--  = { definition of identity }
--    src (identity (f a))
--
--    same chain for tgt and for shape (since shape (identity a) = const a).
-- @
proof_functorialityIdentityLaw
  :: (Eq b, Show b) => (a -> b) -> a -> Either String ()
proof_functorialityIdentityLaw f a =
  let lhs = functoriality f (identity a)
      rhs = identity (f a)
  in if eqHom lhs rhs
       then Right ()
       else Left $ "functoriality(id) /= id: lhs=("
                     ++ show (src lhs) ++ "," ++ show (tgt lhs)
                     ++ "), rhs=("
                     ++ show (src rhs) ++ "," ++ show (tgt rhs) ++ ")"

-- | Proof: funtohom and homtofun round-trip on the discrete universe.
--
-- @
--    homtofun (funtohom a f) x
--  = { definition of homtofun = funHomAction }
--    funHomAction (FunHom a f) x
--  = { definition of FunHom }
--    f x
-- @
proof_funtohomRoundTrip
  :: (Eq b, Show b) => a -> a -> (a -> b) -> Either String ()
proof_funtohomRoundTrip a x f =
  if homtofun (funtohom a f) x == f x
    then Right ()
    else Left "homtofun (funtohom a f) x /= f x"

-- | Proof: discrete univalence at a concrete pair @(a, b)@.
--
-- Verifies the iff genuinely:
--   * if @a == b@ then @fromEq a b@ is @Just (identity a)@ extensionally;
--   * if @a /= b@ then @fromEq a b@ is @Nothing@.
proof_discUnivalence :: (Discrete a, Show a) => a -> a -> Either String ()
proof_discUnivalence a b =
  if discUnivalenceToy a b
    then Right ()
    else Left $ "discUnivalence failed at (" ++ show a ++ ", " ++ show b ++ ")"
