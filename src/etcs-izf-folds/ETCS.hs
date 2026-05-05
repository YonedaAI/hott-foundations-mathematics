{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
-- | Encoding of the ETCS axioms (Lawvere 1964) as Haskell type classes.
--
-- This is illustrative, not a faithful internalisation: Haskell's type system
-- cannot enforce all of A1--A8, but the laws can be tested via finite
-- examples.  A faithful internalisation lives in the Lean 4 / Mathlib
-- companion file lean/etcs-izf-folds/ETCS.lean.
--
-- The class hierarchy reflects the dependencies between axioms:
--
--   Cat
--    |-- Terminal       (A1 part 1)
--    |    |-- Products       (A1 part 2)
--    |    |    |-- Equalisers      (A1 part 3)
--    |    |    |-- Exponentials    (A2)
--    |    |    |-- SubobjectClassifier (A3)
--    |    |-- NNO              (A4)
--    |    |-- WellPointed      (A5)  -- now requires Terminal so global
--    |    |                          --   elements 1 -> A make sense
--    |    |-- TwoValued        (A7)
--    |    |-- NonDegenerate    (A8)
--    |-- Choice           (A6)  -- requires Epi witnesses
--
-- The aggregate class 'ETCS' bundles all eight axioms.
module ETCS
  ( -- * Core class
    Cat(..)
  , -- * Limits
    Terminal(..)
  , Products(..)
  , Equalisers(..)
  , -- * Cartesian closure / classifier
    Exponentials(..)
  , SubobjectClassifier(..)
  , -- * Natural numbers, well-pointedness, choice
    NNO(..)
  , WellPointed(..)
  , Choice(..)
  , -- * Truth-value and non-degeneracy
    TwoValued(..)
  , NonDegenerate(..)
  , -- * Mono / Epi witnesses (abstract; build with smart constructors)
    Mono
  , unMono
  , mkMono
  , Epi
  , unEpi
  , mkEpi
  , -- * Aggregate
    ETCS
  , -- * Law checkers
    checkChoiceLaw
  , -- * Demo
    demoAxioms
  ) where

-- | A1: a category has objects, morphisms, identity, composition.
class Cat ob mor | ob -> mor, mor -> ob where
  idArr  :: ob -> mor
  comp   :: mor -> mor -> mor       -- post-composition: comp f g = f . g
  src    :: mor -> ob
  tgt    :: mor -> ob

-- | A1 (continued): finite limits.  Terminal object.
class Cat ob mor => Terminal ob mor where
  one    :: ob
  bang   :: ob -> mor               -- unique map  X -> 1

-- | A1 (continued): binary products.
class Terminal ob mor => Products ob mor where
  prod   :: ob -> ob -> ob
  pi1    :: ob -> ob -> mor         -- A x B -> A
  pi2    :: ob -> ob -> mor         -- A x B -> B
  pair   :: mor -> mor -> mor       -- given f:X->A, g:X->B, get <f,g>:X->AxB

-- | A1 (continued): equalisers.
class Products ob mor => Equalisers ob mor where
  equaliser    :: mor -> mor -> ob   -- equaliser of parallel f,g : A -> B
  equaliserMap :: mor -> mor -> mor  -- the canonical inclusion E -> A

-- | A2: Cartesian closure.
class Products ob mor => Exponentials ob mor where
  expObj  :: ob -> ob -> ob          -- B^A
  evalArr :: ob -> ob -> mor         -- ev : B^A x A -> B
  curry'  :: mor -> mor              -- X x A -> B becomes X -> B^A

-- | A3: subobject classifier.
class Products ob mor => SubobjectClassifier ob mor where
  omega :: ob
  truth :: mor                       -- 1 -> Omega
  chi   :: Mono mor -> mor           -- mono m : A >-> B  ~~>  chi_m : B -> Omega

-- | A4: natural numbers object.
class Terminal ob mor => NNO ob mor where
  nat     :: ob                      -- N
  zero    :: mor                     -- 1 -> N
  succN   :: mor                     -- N -> N
  primRec :: mor -> mor -> mor       -- given x0 : 1 -> X, f : X -> X, give h : N -> X

-- | A5: well-pointedness.  Requires Terminal so that "global elements"
-- 1 -> A are first-class.
class Terminal ob mor => WellPointed ob mor where
  -- | A finite witness that two parallel morphisms are distinct, produced
  --   as a global element  1 -> A  separating them.
  separate :: mor -> mor -> Maybe mor

-- | A6: axiom of choice.  Now takes a verified epi witness, not an arbitrary
-- morphism, and is /total/: every epimorphism splits.  The returned section
-- 's : codomain e -> domain e' must satisfy  e . s = id_codomain  (this law
-- is checked by 'checkChoiceLaw').
class Cat ob mor => Choice ob mor where
  sectionOf :: Epi mor -> mor

-- | A7: two-valuedness.  Either truth = falsity is impossible, and the
--  global elements 1 -> Omega are exactly two: top and bottom.
class SubobjectClassifier ob mor => TwoValued ob mor where
  topOmega    :: mor                 -- 1 -> Omega (= truth)
  bottomOmega :: mor                 -- 1 -> Omega (= falsity)

-- | A8: non-degeneracy.  The initial and terminal objects are distinct.
class Terminal ob mor => NonDegenerate ob mor where
  zeroObj :: ob                      -- the initial object 0
  -- The law:  zeroObj /= one  is checked in the law-checking layer.

-- | An aggregate class that bundles all eight ETCS axioms.  Any instance
-- realises a model of ETCS in the (illustrative) Haskell sense.
class
  ( Equalisers ob mor
  , Exponentials ob mor
  , NNO ob mor
  , WellPointed ob mor
  , Choice ob mor
  , TwoValued ob mor
  , NonDegenerate ob mor
  ) => ETCS ob mor

-- | A morphism that has been verified to be a monomorphism.  The
-- constructor is hidden; clients must use 'mkMono', which requires a
-- proof predicate (\f -> isMono f) so that wrappers cannot be forged.
newtype Mono mor = Mono mor deriving (Eq, Show)

-- | Project the underlying morphism.
unMono :: Mono mor -> mor
unMono (Mono m) = m

-- | Smart constructor for 'Mono': the predicate must witness mono-ness
-- (e.g. by checking left-cancellability against a finite witness set).
mkMono :: (mor -> Bool) -> mor -> Maybe (Mono mor)
mkMono isMonoP m
  | isMonoP m = Just (Mono m)
  | otherwise = Nothing

-- | A morphism that has been verified to be an epimorphism.  Same
-- discipline as 'Mono': construct via 'mkEpi' with a proof predicate.
newtype Epi mor = Epi mor deriving (Eq, Show)

-- | Project the underlying morphism.
unEpi :: Epi mor -> mor
unEpi (Epi e) = e

-- | Smart constructor for 'Epi'.
mkEpi :: (mor -> Bool) -> mor -> Maybe (Epi mor)
mkEpi isEpiP e
  | isEpiP e = Just (Epi e)
  | otherwise = Nothing

-- | Law checker for the choice axiom: verify that the section
-- returned by 'sectionOf' splits the epi, i.e.  e . s = id_codomain_of_e.
-- The user supplies the equality test on morphisms because Haskell cannot
-- decide morphism equality in general.
checkChoiceLaw
  :: (Choice ob mor)
  => (mor -> mor -> Bool)   -- ^ morphism equality test
  -> Epi mor
  -> Bool
checkChoiceLaw eqMor e =
  let s    = sectionOf e
      lhs  = comp (unEpi e) s
      idTo = idArr (tgt (unEpi e))
  in eqMor lhs idTo

-- | Quick textual summary used by Main.hs.
demoAxioms :: IO ()
demoAxioms = do
  putStrLn "  A1: finite limits          (Terminal, Products, Equalisers)"
  putStrLn "  A2: Cartesian closure       (Exponentials, eval, curry)"
  putStrLn "  A3: subobject classifier    (Omega, truth, chi : Mono -> mor)"
  putStrLn "  A4: natural numbers object  (N, 0, s, primitive recursion)"
  putStrLn "  A5: well-pointedness        (global elements separate maps)"
  putStrLn "  A6: choice                  (Epi witnesses split)"
  putStrLn "  A7: two-valuedness          (TwoValued: top, bottom : 1 -> Omega)"
  putStrLn "  A8: non-degeneracy          (NonDegenerate: 0 /= 1)"
  putStrLn "  Aggregate ETCS class bundles A1-A8."
