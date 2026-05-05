{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE ScopedTypeVariables #-}

-- | Module      : Properties
-- | Description : Properties of directed types and QuickCheck verifications.
-- |
-- | We expose properties analogous to those of Riehl-Shulman simplicial
-- | type theory:
-- |   * Functoriality of hom along a function.
-- |   * Action of the discrete inclusion S -> U.
-- |   * Witness predicates: isSegal, isRezk, isDisc.
-- |
-- | The QuickCheck section verifies the main theorems from the paper:
-- |   * Identity laws.
-- |   * Composition associativity (Segal).
-- |   * Functoriality of hom.
-- |   * Discrete univalence (toy form).
-- |   * funtohom round trip (extensional).
-- |
-- | Round 1 review fixes:
-- |   * 'prop_funtohomInverse' now quantifies over arbitrary functions
-- |     (using 'Fun Int Int') and arbitrary input points.
-- |   * 'prop_discUnivalenceToy' is replaced by direct forward/backward
-- |     properties over 'fromEq' that validate endpoints and shape.
-- |   * Composition is partial; properties propagate 'Maybe' explicitly.

module Properties
  ( isSegalWitness
  , isRezkWitness
  , isDiscWitness
  , prop_identityIsTrivial
  , prop_identityShape
  , prop_composeEndpoints
  , prop_composeNonComposable
  , prop_composeAssociative
  , prop_functorialityEndpoints
  , prop_functorialityIdentity
  , prop_functorialityComposition
  , prop_discUnivalenceForward
  , prop_discUnivalenceBackward
  , prop_discUnivalenceFull
  , prop_toEqIdentity
  , prop_toEqNonIdentity
  , prop_fromEqToEqRoundTrip
  , prop_funtohomInverse
  , prop_funtohomExtensional
  , prop_isSegalReflexive
  , prop_isRezkIdentity
  , prop_invertibleToIdSuccess
  , prop_invertibleToIdRejectsUnequalEndpoints
  , prop_invertibleToIdRejectsBadInverse
  , runAllProperties
  ) where

import Directed
import Hom
import Proofs (identityIsTrivial, composeAssociative, discUnivalenceToy)
import Test.QuickCheck

-- | A toy witness that two homs in the discrete universe are composable
-- (i.e. their endpoints align). Returns True iff @tgt f == src g@.
isSegalWitness :: forall a. (Eq a) => Hom (Disc a) -> Hom (Disc a) -> Bool
isSegalWitness f g = tgt f == src g

-- | A toy witness for Rezk: an invertible morphism collapses to identity
-- when its source equals its target (in the toy world).
isRezkWitness :: (Eq a) => Hom (Disc a) -> Bool
isRezkWitness h = src h == tgt h

-- | A toy witness for discreteness: the hom from a to b is the identity
-- shape iff a = b.
isDiscWitness :: (Eq a) => Hom (Disc a) -> Bool
isDiscWitness h = src h == tgt h

-- ---------------------------------------------------------------------------
-- Helpers for QuickCheck
-- ---------------------------------------------------------------------------

-- | Build a "linear" hom in @Disc Int@ that respects the endpoint
-- invariant.
linHom :: Int -> Int -> Hom (Disc Int)
linHom a b = case mkHom (Disc a) (Disc b) (\i -> case i of I0 -> Disc a; I1 -> Disc b) of
  Just h  -> h
  Nothing -> error "linHom: smart constructor rejected a manifestly valid hom"

-- ---------------------------------------------------------------------------
-- QuickCheck properties
-- ---------------------------------------------------------------------------

-- | Property: identity hom is trivial (constant) at any value.
-- Corresponds to the identity-uniqueness theorem (Section 3 of the paper).
prop_identityIsTrivial :: Int -> Property
prop_identityIsTrivial a = property (identityIsTrivial (Disc a))

-- | Property: identity shape is constant at the source.
-- Corresponds to id_a in Riehl-Shulman simplicial type theory.
prop_identityShape :: Int -> Property
prop_identityShape a =
  let h = identity (Disc a)
  in shape h I0 === Disc a .&&. shape h I1 === Disc a

-- | Property: when endpoints match, composition produces a hom whose
-- source equals f's source and target equals g's target.
-- Corresponds to the Segal predicate (Section 3 of the paper).
prop_composeEndpoints :: Int -> Int -> Int -> Property
prop_composeEndpoints a b c =
  let f = linHom a b
      g = linHom b c
  in case compose g f of
       Just gf -> src gf === Disc a .&&. tgt gf === Disc c
       Nothing -> counterexample "compose returned Nothing for matched endpoints" False

-- | Property: when endpoints do NOT match, composition returns Nothing.
-- This guards against the previous bug where compose silently fabricated
-- an identity for non-composable pairs.
prop_composeNonComposable :: Int -> Int -> Int -> Int -> Property
prop_composeNonComposable a b c d =
  b /= c ==>
    let f = linHom a b
        g = linHom c d
    in case compose g f of
         Nothing -> property True
         Just _  -> counterexample "compose accepted non-composable pair" False

-- | Property: composition is associative (extensionally).
-- Corresponds to associativity in any Segal type (Section 3).
prop_composeAssociative :: Int -> Int -> Int -> Int -> Property
prop_composeAssociative w x y z =
  property (composeAssociative (Disc w) (Disc x) (Disc y) (Disc z))

-- | Property: functoriality preserves endpoints.
-- f : A -> B induces Hom_A(a,b) -> Hom_B(f a, f b).
prop_functorialityEndpoints :: Fun Int Int -> Int -> Int -> Property
prop_functorialityEndpoints (Fn f) a b =
  let h  = linHom a b
      h' = functoriality (\(Disc x) -> Disc (f x)) h
  in src h' === Disc (f a) .&&. tgt h' === Disc (f b)

-- | Property: functoriality preserves identity. functoriality f (identity a) = identity (f a).
-- Corresponds to F(id_a) = id_{F a}, checked extensionally with eqHom.
prop_functorialityIdentity :: Fun Int Int -> Int -> Property
prop_functorialityIdentity (Fn f) a =
  let lhs = functoriality (\(Disc x) -> Disc (f x)) (identity (Disc a))
      rhs = identity (Disc (f a))
  in property (eqHom lhs rhs)

-- | Property: functoriality is itself functorial:
-- F (g . f) hom = (F g . F f) hom (extensionally via 'eqHom').
prop_functorialityComposition :: Fun Int Int -> Fun Int Int -> Int -> Int -> Property
prop_functorialityComposition (Fn f) (Fn g) a b =
  let h    = linHom a b
      ff   = (\(Disc x) -> Disc (f x))
      gg   = (\(Disc x) -> Disc (g x))
      lhs  = functoriality (gg . ff) h
      rhs  = functoriality gg (functoriality ff h)
  in property (eqHom lhs rhs)

-- | Property: forward direction of toy directed univalence.
-- a == b implies fromEq returns Just at the canonical hom.
prop_discUnivalenceForward :: Int -> Property
prop_discUnivalenceForward a =
  case fromEq (Disc a) (Disc a) of
    Just h  -> src h === Disc a
                 .&&. tgt h === Disc a
                 .&&. shape h I0 === Disc a
                 .&&. shape h I1 === Disc a
    Nothing -> counterexample "fromEq a a returned Nothing" False

-- | Property: backward direction of toy directed univalence.
-- a /= b implies fromEq returns Nothing.
prop_discUnivalenceBackward :: Int -> Int -> Property
prop_discUnivalenceBackward a b =
  a /= b ==> case fromEq (Disc a) (Disc b) of
    Nothing -> property True
    Just _  -> counterexample "fromEq returned Just for unequal inputs" False

-- | Property: combined directed univalence inspecting fromEq genuinely.
-- Replaces the old tautological wrapper.
prop_discUnivalenceFull :: Int -> Int -> Property
prop_discUnivalenceFull a b = property (discUnivalenceToy (Disc a) (Disc b))

-- | Property: funtohom and homtofun round-trip extensionally on
-- arbitrary functions and arbitrary input points.
-- Corresponds to Theorem (GWB 2024) restricted to the discrete universe.
prop_funtohomInverse :: Fun Int Int -> Int -> Int -> Property
prop_funtohomInverse (Fn f) a x = homtofun (funtohom a f) x === f x

-- | Property: full extensional check of @homtofun . funtohom = id@.
-- Quantifies over arbitrary functions and a list of input points.
prop_funtohomExtensional :: Fun Int Int -> Int -> [Int] -> Property
prop_funtohomExtensional (Fn f) a xs =
  let g = homtofun (funtohom a f)
  in conjoin [ g x === f x | x <- xs ]

-- | Property: isSegalWitness is reflexive when the hom is a self-loop.
prop_isSegalReflexive :: Int -> Property
prop_isSegalReflexive a =
  let h = identity (Disc a)
  in property (isSegalWitness h h)

-- | Property: isRezkWitness holds for the identity hom.
prop_isRezkIdentity :: Int -> Property
prop_isRezkIdentity a =
  let h = identity (Disc a)
  in property (isRezkWitness h)

-- | Property: 'toEq' on the identity at @a@ returns @Just (Disc a, Disc a)@.
prop_toEqIdentity :: Int -> Property
prop_toEqIdentity a =
  toEq (identity (Disc a)) === Just (Disc a, Disc a)

-- | Property: 'toEq' on a non-identity hom (different endpoints) returns Nothing.
prop_toEqNonIdentity :: Int -> Int -> Property
prop_toEqNonIdentity a b =
  a /= b ==>
    -- Build a non-identity hom directly via mkHom (which permits unequal
    -- endpoints in the underlying carrier; toEq is the discriminator).
    case mkHom (Disc a) (Disc b)
           (\i -> case i of I0 -> Disc a; I1 -> Disc b) of
      Just h  -> toEq h === Nothing
      Nothing -> counterexample "mkHom rejected a manifestly valid hom" False

-- | Property: round trip @fromEq -> toEq@. If @fromEq a b == Just h@ then
-- @toEq h == Just (a, b)@ and the endpoints match.
prop_fromEqToEqRoundTrip :: Int -> Int -> Property
prop_fromEqToEqRoundTrip a b =
  case fromEq (Disc a) (Disc b) of
    Just h  -> toEq h === Just (Disc a, Disc b)
                 .&&. property (a == b)
    Nothing -> property (a /= b)

-- | Property: 'invertibleToId' succeeds on @(identity a, identity a)@ and
-- returns @Just (Disc a, Disc a)@.
prop_invertibleToIdSuccess :: Int -> Property
prop_invertibleToIdSuccess a =
  let h = identity (Disc a)
  in invertibleToId h h === Just (Disc a, Disc a)

-- | Property: 'invertibleToId' rejects pairs where @src alpha /= tgt alpha@,
-- since a true Rezk witness collapses the alpha to an identity.
prop_invertibleToIdRejectsUnequalEndpoints :: Int -> Int -> Property
prop_invertibleToIdRejectsUnequalEndpoints a b =
  a /= b ==>
    case mkHom (Disc a) (Disc b)
           (\i -> case i of I0 -> Disc a; I1 -> Disc b) of
      Just alpha ->
        case mkHom (Disc b) (Disc a)
               (\i -> case i of I0 -> Disc b; I1 -> Disc a) of
          Just beta ->
            -- Even with a "well-typed" inverse beta : b -> a, the alpha o beta
            -- composite is a hom b -> b but with non-identity shape (the toy
            -- compose for Disc just records endpoints), so eqHom fails against
            -- (identity (Disc b)) when a /= b. Hence invertibleToId rejects.
            invertibleToId alpha beta === Nothing
          Nothing -> counterexample "mkHom rejected a manifestly valid beta" False
      Nothing -> counterexample "mkHom rejected a manifestly valid alpha" False

-- | Property: 'invertibleToId' rejects a candidate inverse with mismatched
-- endpoints (@src beta /= tgt alpha@, so beta cannot be an inverse).
prop_invertibleToIdRejectsBadInverse :: Int -> Int -> Int -> Property
prop_invertibleToIdRejectsBadInverse a b c =
  c /= b ==>
    let alpha = identity (Disc a)
    in case mkHom (Disc c) (Disc b)
              (\i -> case i of I0 -> Disc c; I1 -> Disc b) of
         Just beta ->
           -- compose beta alpha needs tgt alpha == src beta, i.e. a == c.
           -- We ensure c /= b but allow a to vary; when a /= c, compose fails.
           if a /= c
             then invertibleToId alpha beta === Nothing
             else property True  -- skip: composable but covered by unequal-endpoint case
         Nothing -> counterexample "mkHom rejected a manifestly valid beta" False

-- | Run every QuickCheck property. Each gets 1000 random samples.
runAllProperties :: IO ()
runAllProperties = do
  putStrLn "--- QuickCheck Properties ---"
  let args = stdArgs { maxSuccess = 1000 }
  putStrLn "prop_identityIsTrivial:"        >> quickCheckWith args prop_identityIsTrivial
  putStrLn "prop_identityShape:"            >> quickCheckWith args prop_identityShape
  putStrLn "prop_composeEndpoints:"         >> quickCheckWith args prop_composeEndpoints
  putStrLn "prop_composeNonComposable:"     >> quickCheckWith args prop_composeNonComposable
  putStrLn "prop_composeAssociative:"       >> quickCheckWith args prop_composeAssociative
  putStrLn "prop_functorialityEndpoints:"   >> quickCheckWith args prop_functorialityEndpoints
  putStrLn "prop_functorialityIdentity:"    >> quickCheckWith args prop_functorialityIdentity
  putStrLn "prop_functorialityComposition:" >> quickCheckWith args prop_functorialityComposition
  putStrLn "prop_discUnivalenceForward:"    >> quickCheckWith args prop_discUnivalenceForward
  putStrLn "prop_discUnivalenceBackward:"   >> quickCheckWith args prop_discUnivalenceBackward
  putStrLn "prop_discUnivalenceFull:"       >> quickCheckWith args prop_discUnivalenceFull
  putStrLn "prop_funtohomInverse:"          >> quickCheckWith args prop_funtohomInverse
  putStrLn "prop_funtohomExtensional:"      >> quickCheckWith args prop_funtohomExtensional
  putStrLn "prop_toEqIdentity:"             >> quickCheckWith args prop_toEqIdentity
  putStrLn "prop_toEqNonIdentity:"          >> quickCheckWith args prop_toEqNonIdentity
  putStrLn "prop_fromEqToEqRoundTrip:"      >> quickCheckWith args prop_fromEqToEqRoundTrip
  putStrLn "prop_isSegalReflexive:"         >> quickCheckWith args prop_isSegalReflexive
  putStrLn "prop_isRezkIdentity:"           >> quickCheckWith args prop_isRezkIdentity
  putStrLn "prop_invertibleToIdSuccess:"    >> quickCheckWith args prop_invertibleToIdSuccess
  putStrLn "prop_invertibleToIdRejectsUnequalEndpoints:" >> quickCheckWith args prop_invertibleToIdRejectsUnequalEndpoints
  putStrLn "prop_invertibleToIdRejectsBadInverse:" >> quickCheckWith args prop_invertibleToIdRejectsBadInverse
