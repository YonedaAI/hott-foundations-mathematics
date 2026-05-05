/-
Module: cubical-hiit-cauchy / Reals
Description: Lean 4 / Mathlib4 companion definition of the real numbers
Copyright: (c) YonedaAI Research, 2026

This file gives a Lean 4 / Mathlib4 companion to the Cubical Agda
construction of the paper.  Lean is a *classical* proof assistant: it
admits propositional extensionality and choice, so the HIIT route is
unnecessary.  Mathlib's `Real` type is defined as the quotient of
Cauchy sequences modulo the standard equivalence; here we recall the
basic API and sketch the comparison with the cubical version.

-/

import Mathlib.Data.Real.Basic
import Mathlib.Topology.Instances.Real
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.SpecificLimits.Basic

namespace CubicalHIITCauchy

/-- The Cauchy reals as defined in Mathlib are simply the standard `Real`. -/
abbrev RcLean : Type := Real

/-- Embedding from `Q` into `RcLean` is the canonical coercion. -/
def rat (q : ℚ) : RcLean := (q : ℝ)

/-- Closeness predicate: `|u - v| < ε`. -/
def close (epsilon : ℝ) (u v : RcLean) : Prop :=
  |u - v| < epsilon

/-- Approximation: for any `u : ℝ` and `ε > 0`, there exists a rational
    `q` with `|u - q| < ε`.  This is the dense embedding of `ℚ` in `ℝ`. -/
theorem approx_exists (u : ℝ) {epsilon : ℝ} (h : 0 < epsilon) :
    ∃ q : ℚ, |u - (q : ℝ)| < epsilon := by
  exact (Rat.exists_rat_near u h)

/-- The square root of 2 in Lean's `Real`. -/
noncomputable def sqrt2_lean : ℝ := Real.sqrt 2

/-- Pi. -/
noncomputable def piLean : ℝ := Real.pi

/-- Euler's constant e. -/
noncomputable def eLean : ℝ := Real.exp 1

/-! ### The Cauchy completion universal property

In Mathlib, `Real.completeSpace` witnesses that every Cauchy sequence
in `ℝ` converges.  This is the universal property of the Cauchy
completion of `ℚ`, but stated externally rather than as the defining
property of an HIIT.
-/

/-- Convergent rational sequences embed into the reals.  The map is
    `Real.cauchy`. -/
def fromCauchy (f : CauSeq ℚ abs) : ℝ :=
  Real.mk f

/-! ### Comparison with the cubical version

The cubical Agda `Rc` of Section 5 of the paper is, by
Theorem 6.1 (cubical equivalence with located Dedekind cuts),
equivalent as a type to the Mathlib `Real`.  In the classical
setting of Lean, the equivalence is just an `Equiv` of types, with
both directions provable using `Real.mk` and the dense embedding of
`ℚ`.
-/

/-- A sample value: the rational `355/113` (a famous approximation of
    pi). -/
def piRationalApprox : ℚ := 355 / 113

example : |Real.pi - (piRationalApprox : ℝ)| < 1 / 1000 := by
  -- Mathlib provides `Real.pi_lt_3141593` and friends.  The full
  -- proof is left as a `decide` / `norm_num` exercise.
  sorry

end CubicalHIITCauchy
