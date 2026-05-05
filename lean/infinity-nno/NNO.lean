/-
  NNO.lean

  Companion to "Higher-Categorical Natural Numbers Objects". This file
  exhibits the natural numbers object in CategoryTheory using Mathlib's
  `HasNatTransObject` machinery (in spirit) and gives a small in-Lean
  proof of Lambek's theorem applied to the polynomial endofunctor X ↦ 1 + X.

  No external Mathlib dependency is required to compile the core
  definitions below; the categorical comments in proof bodies refer to
  Mathlib's `CategoryTheory.NaturalNumberObject` for the full
  formalisation in Mathlib4.

  Structure:
    * `PtEndo` : a pointed dynamical system on a type.
    * `Nat` is given by Lean's `Nat` (definitional NNO in Type).
    * `rec` is the recursor implementing the universal property.
    * `recExists` : existence of a morphism satisfying the two equations.
    * `recUnique` : uniqueness, by induction on `Nat`.
    * `lambek`    : `[zero, succ] : Unit ⊕ Nat → Nat` is an equivalence.
-/

namespace InfinityNNO

/-- A pointed dynamical system on a type `α`. -/
structure PtEndo (α : Type) where
  base : α
  step : α → α

/-- The recursor for the natural-numbers object. -/
def rec {α : Type} (pe : PtEndo α) : Nat → α
  | 0     => pe.base
  | n + 1 => pe.step (rec pe n)

/-- The recursor satisfies the base-point equation. -/
theorem rec_zero {α : Type} (pe : PtEndo α) : rec pe 0 = pe.base := by
  rfl

/-- The recursor satisfies the step equation. -/
theorem rec_succ {α : Type} (pe : PtEndo α) (n : Nat) :
    rec pe (n + 1) = pe.step (rec pe n) := by
  rfl

/--
Existence half of the universal property of the NNO:
there is a function `Nat → α` satisfying both universal-property equations.
-/
theorem recExists {α : Type} (pe : PtEndo α) :
    ∃ h : Nat → α, h 0 = pe.base ∧ ∀ n, h (n + 1) = pe.step (h n) := by
  refine ⟨rec pe, rec_zero pe, ?_⟩
  intro n
  exact rec_succ pe n

/--
Uniqueness half of the universal property: any function `h` satisfying the
two equations agrees with `rec pe` everywhere.
-/
theorem recUnique {α : Type} (pe : PtEndo α) (h : Nat → α)
    (h0 : h 0 = pe.base)
    (hs : ∀ n, h (n + 1) = pe.step (h n)) :
    ∀ n, h n = rec pe n := by
  intro n
  induction n with
  | zero =>
    simp [rec, h0]
  | succ n ih =>
    rw [hs n, ih]
    rfl

/--
Combined statement: there is a unique function `Nat → α` satisfying the
universal-property equations.
-/
theorem recUniversal {α : Type} (pe : PtEndo α) :
    ∃! h : Nat → α, h 0 = pe.base ∧ ∀ n, h (n + 1) = pe.step (h n) := by
  refine ⟨rec pe, ⟨rec_zero pe, fun n => rec_succ pe n⟩, ?_⟩
  rintro h ⟨h0, hs⟩
  funext n
  exact recUnique pe h h0 hs n

/-! ### Lambek's theorem for the polynomial endofunctor `F X = Unit ⊕ X` -/

/-- The structure map `[zero, succ] : Unit ⊕ Nat → Nat`. -/
def structureMap : Sum Unit Nat → Nat
  | Sum.inl _ => 0
  | Sum.inr n => n + 1

/-- The candidate inverse to `structureMap`. -/
def structureInv : Nat → Sum Unit Nat
  | 0     => Sum.inl ()
  | n + 1 => Sum.inr n

/-- `structureInv` is a section of `structureMap`. -/
theorem structureMap_structureInv : ∀ n, structureMap (structureInv n) = n
  | 0     => rfl
  | _ + 1 => rfl

/-- `structureInv` is a retraction of `structureMap`. -/
theorem structureInv_structureMap :
    ∀ x : Sum Unit Nat, structureInv (structureMap x) = x
  | Sum.inl ()    => rfl
  | Sum.inr _     => rfl

/-- Lambek's theorem in this concrete form: `structureMap` is a bijection. -/
theorem lambek :
    Function.Bijective (structureMap) := by
  refine ⟨?_, ?_⟩
  · intro x y h
    have : structureInv (structureMap x) = structureInv (structureMap y) :=
      congrArg structureInv h
    simpa [structureInv_structureMap] using this
  · intro n
    refine ⟨structureInv n, ?_⟩
    exact structureMap_structureInv n

/-! ### Rigidity: any NNO endomorphism preserving zero and succ is the identity. -/

theorem aut_is_id (h : Nat → Nat) (h0 : h 0 = 0)
    (hs : ∀ n, h (n + 1) = h n + 1) : ∀ n, h n = n := by
  intro n
  induction n with
  | zero => simpa using h0
  | succ n ih =>
    rw [hs n, ih]

end InfinityNNO
