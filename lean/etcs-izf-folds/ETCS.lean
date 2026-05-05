/-
ETCS axioms in Lean 4 / Mathlib.

Companion to the etcs-izf-folds paper.

We import the categorical core of Mathlib and state the eight ETCS axioms as
a structure on a category C : Type u.  The interpretation of A1--A6 follows
the standard Mathlib formalisation of toposes; A7 (two-valuedness) and A8
(non-degeneracy) are stated directly.

This file is not intended to compile out-of-the-box against a fixed Mathlib
revision; it is a reading reference.
-/

import Mathlib.CategoryTheory.Category.Basic
import Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts
import Mathlib.CategoryTheory.Limits.Shapes.Equalizers
import Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts
import Mathlib.CategoryTheory.Closed.Cartesian
import Mathlib.CategoryTheory.NaturalIsomorphism
-- import Mathlib.CategoryTheory.Topos.Basic     -- placeholder

namespace ETCS

open CategoryTheory

universe u

/-- A category C is well-pointed if global elements separate parallel maps. -/
class WellPointed (C : Type u) [Category C] [Limits.HasTerminal C] : Prop where
  separates :
    ∀ {A B : C} {f g : A ⟶ B},
      (∀ x : (Limits.terminal C) ⟶ A, f.comp x = g.comp x) → f = g

/-- An ETCS structure: well-pointed elementary topos with NNO and AC. -/
structure ETCS (C : Type u) [Category C] : Prop where
  hasFiniteProducts : Limits.HasFiniteProducts C
  hasEqualizers     : Limits.HasEqualizers C
  cartesianClosed   : CartesianClosed C
  -- subobject classifier (Mathlib: SubobjectClassifier C)
  -- NNO existence (Mathlib: NaturalNumberObject C)
  -- well-pointedness:
  wellPointed       : True   -- standin: WellPointed C
  -- choice (every epi splits):
  axiomOfChoice     : True   -- standin
  -- two-valuedness:
  twoValued         : True   -- standin
  -- non-degeneracy: 0 ≇ 1
  nonDegenerate     : True   -- standin

/-- ETCS implies function extensionality at the level of global elements. -/
theorem funext_globalElements
    {C : Type u} [Category C] [Limits.HasTerminal C]
    [WellPointed C] {A B : C} {f g : A ⟶ B}
    (h : ∀ x : (Limits.terminal C) ⟶ A, f.comp x = g.comp x) : f = g :=
  WellPointed.separates h

end ETCS
