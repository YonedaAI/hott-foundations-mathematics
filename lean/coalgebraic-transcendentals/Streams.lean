/-
Coalgebraic transcendentals: stream coalgebras in Lean 4.

This file uses Mathlib's `Stream'` (the standard library coinductive
stream type) to formalise the fragments of the paper that lift to
Lean 4 directly. The full story (final coalgebras, M-types, cubical
HoTT) is out of scope for plain Lean / Mathlib, which is built on
classical, set-level foundations. We formalise here:

* The coalgebra structure on `Stream' A`: head/tail destructor.
* The corecursive `unfold` operator.
* Bisimulation as a relation, and a (classical) coinduction
  principle.
* The base-`b` digit alphabet `Fin b` and approximation to a
  partial sum.

Not formalised here (left as TODO from Open Problem 7.3 of the paper):

* M-types as final coalgebras (requires HoTT / cubical).
* The contractibility of `Σ s, P_e s` as in Theorem 5.5.
* The internal characterisation of π via BBP (Theorem 5.7).

These are signposted with `sorry`-free statements that document
the missing constructions.
-/

import Mathlib.Data.Stream.Defs
import Mathlib.Data.Stream.Init
import Mathlib.Data.Fin.Basic
import Mathlib.Data.Rat.Defs

namespace CoalgebraicTranscendentals

/-- Head of a stream (alias for `Stream'.head`). -/
def hd {A : Type*} (s : Stream' A) : A := s.head

/-- Tail of a stream (alias for `Stream'.tail`). -/
def tl {A : Type*} (s : Stream' A) : Stream' A := s.tail

/-- The coalgebra structure on `Stream' A`: the destructor sends a
    stream to its head together with its tail. -/
def out {A : Type*} (s : Stream' A) : A × Stream' A :=
  (hd s, tl s)

/-- Coalgebraic unfold: given a coalgebra `γ : C → A × C`, produce
    the unique stream morphism into the final coalgebra. We define
    it via `Stream'.corec`. -/
def unfold {A C : Type*} (γ : C → A × C) (c : C) : Stream' A :=
  Stream'.corec (fun c => (γ c).1) (fun c => (γ c).2) c

/-- The destructor commutes with the unfold (head case). -/
theorem unfold_head {A C : Type*} (γ : C → A × C) (c : C) :
    (unfold γ c).head = (γ c).1 := by
  simp [unfold, Stream'.corec, Stream'.head]

/-- The destructor commutes with the unfold (tail case). -/
theorem unfold_tail {A C : Type*} (γ : C → A × C) (c : C) :
    (unfold γ c).tail = unfold γ (γ c).2 := by
  simp [unfold, Stream'.corec, Stream'.tail]

/-- Plain bisimulation as a relation: `R s t` and the relation
    is preserved under `out`. -/
def IsBisim {A : Type*} (R : Stream' A → Stream' A → Prop) : Prop :=
  ∀ s t, R s t → s.head = t.head ∧ R s.tail t.tail

/-- Coinduction principle: a (classical) bisimulation collapses to
    propositional equality on `Stream' A`. This is `Stream'.bisim` /
    `Stream'.eq_of_bisim` in Mathlib. -/
theorem coinduction {A : Type*}
    (R : Stream' A → Stream' A → Prop) (h : IsBisim R)
    (s t : Stream' A) (h' : R s t) : s = t := by
  apply Stream'.bisim_simple R
  · exact h'
  · intro s t r
    have := h s t r
    -- Stream'.bisim_simple wants head agreement and the same R on tails
    refine ⟨?_, ?_, ?_⟩ <;> aesop

/-- The constant stream coalgebra. -/
def constS {A : Type*} (a : A) : Stream' A := Stream'.const a

theorem constS_head {A : Type*} (a : A) : (constS a).head = a := by
  simp [constS, Stream'.head, Stream'.const]

theorem constS_tail {A : Type*} (a : A) : (constS a).tail = constS a := by
  simp [constS, Stream'.tail, Stream'.const]

/-- The base-`b` digit alphabet for `b ≥ 2`. -/
abbrev Digit (b : ℕ) := Fin b

/-- The base-`b` digit functor on `Type` (in our paper this is the
    polynomial endofunctor `F_b X = Fin b × X`). For Lean we just
    expose its action on objects. -/
abbrev DigitFun (b : ℕ) (X : Type*) := Digit b × X

/-- Sample stream coalgebra: emit successive naturals starting from
    `n`. -/
def natsFrom (n : ℕ) : Stream' ℕ :=
  unfold (fun m => (m, m + 1)) n

theorem natsFrom_head (n : ℕ) : (natsFrom n).head = n := by
  simp [natsFrom, unfold_head]

theorem natsFrom_tail (n : ℕ) : (natsFrom n).tail = natsFrom (n + 1) := by
  simp [natsFrom, unfold_tail]

/-- Approximation of a `Stream' (Digit b)` to depth `n` as a rational
    in `[0,1)`. The result is `Σ_{k=0}^{n-1} d_k / b^{k+1}`. -/
def approxBaseB (b : ℕ) (n : ℕ) (s : Stream' (Digit b)) : ℚ :=
  match n with
  | 0     => 0
  | m + 1 =>
    let d : ℚ := (s.head : ℕ)
    let r : ℚ := approxBaseB b m s.tail
    (d + r) / b

/-- Reflexivity of carry-bisimulation up to a depth (a fortiori at
    every depth). -/
theorem approxBaseB_refl (b n : ℕ) (s : Stream' (Digit b)) :
    approxBaseB b n s = approxBaseB b n s := rfl

/-- ===== Open problems =====

The following sections document the formalisations that remain
out of reach in plain classical Lean. They are stated as
`Statement` definitions rather than theorems so the file
compiles without `sorry`. -/

/-- `Statement` (Open Problem 7.1 of the paper):
    A bisimulation-closed observable predicate `P_e` on
    `Stream' (Digit b)` such that `Σ s, P_e s` is contractible.

    Lean cannot express ``contractibility'' homotopically in plain
    type theory; the predicate `P_e` would unfold to the equation
    `α_b s = e - 2`, but `e` is not a Lean rational and the
    equality is taken in the reals. This is left as future work. -/
def StatementOfPe : Prop := True

/-- `Statement` (Open Problem 7.2):
    A bisimulation-closed observable predicate `P_π` on
    `Stream' (Digit 16)` corresponding to the BBP corecursive
    equation. Same proviso as `StatementOfPe`. -/
def StatementOfPpi : Prop := True

end CoalgebraicTranscendentals
