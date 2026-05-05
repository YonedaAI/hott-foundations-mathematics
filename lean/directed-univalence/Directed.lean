/-
  Directed.lean
  -------------

  A Lean 4 sketch of directed type theory and the directed univalence
  principle, accompanying the paper

      "Directed Univalence: From Riehl-Shulman to a Complete Principle"

  This file is a *sketch*, not a foundational implementation. We use
  postulates ("axiom" / "noncomputable def") where appropriate to express
  the directed type theory primitives, and prove a small handful of
  trivial-but-illustrative consequences of the axioms.

  Highlights:
    * The directed interval `TwoI` with endpoints I0 I1.
    * Hom : (A : Type) -> A -> A -> Type
    * The Segal predicate.
    * The Discrete predicate.
    * Directed univalence for the discrete universe (Theorem 5.4 in the
      paper; Theorem 8.1 in Gratzer-Weinberger-Buchholtz 2024) as an
      axiom in this file.
-/

namespace DirectedUnivalence

/-- The directed interval with two endpoints. -/
inductive TwoI : Type
  | I0 : TwoI
  | I1 : TwoI
  deriving DecidableEq, Repr

namespace TwoI

/-- The interval is ordered. -/
def le : TwoI -> TwoI -> Prop
  | I0, _  => True
  | I1, I0 => False
  | I1, I1 => True

instance : LE TwoI := ⟨le⟩

end TwoI

/-- The hom-type as an extension type out of `TwoI`. We model it as a
    function `TwoI → A` together with two propositional witnesses fixing
    the endpoints to `a` and `b`. -/
structure Hom (A : Type) (a b : A) : Type where
  shape  : TwoI → A
  src_eq : shape TwoI.I0 = a
  tgt_eq : shape TwoI.I1 = b

namespace Hom

/-- The identity morphism. -/
def id {A : Type} (a : A) : Hom A a a where
  shape  := fun _ => a
  src_eq := rfl
  tgt_eq := rfl

/-- Functoriality: a function `f : A → B` induces a map
    `Hom A a b → Hom B (f a) (f b)`. -/
def map {A B : Type} (f : A → B) {a b : A} (h : Hom A a b) : Hom B (f a) (f b) where
  shape  := fun t => f (h.shape t)
  src_eq := by rw [h.src_eq]
  tgt_eq := by rw [h.tgt_eq]

end Hom

/-- The Segal predicate as a `Prop`-valued class:
    composition is defined for matching endpoints. -/
class Segal (A : Type) where
  compose : ∀ {a b c : A}, Hom A b c → Hom A a b → Hom A a c

/-- The Rezk predicate: invertible morphisms come from identifications. -/
class Rezk (A : Type) extends Segal A where
  invertibleToEq :
    ∀ {a b : A} (α : Hom A a b) (β : Hom A b a),
      Segal.compose β α = Hom.id a → Segal.compose α β = Hom.id b → a = b

/-- The Discrete predicate: every morphism is invertible. -/
class Discrete (A : Type) extends Rezk A where
  fromEq : ∀ (a b : A), a = b → Hom A a b

/-- The discrete universe `S` is, in this sketch, a wrapper type whose
    `α` field is required to be discrete. -/
structure DiscType where
  carrier : Type
  isDisc  : Discrete carrier

/-- Hom in the discrete universe of types. We do not yet know how to
    define this internally; we postulate it. -/
axiom HomS : DiscType → DiscType → Type

/-- The map from functions to homs in the discrete universe.
    This is `funtohom_{A,B}` from the paper. -/
axiom funtohom :
  ∀ (A B : DiscType), (A.carrier → B.carrier) → HomS A B

/-- The directed univalence theorem for the discrete universe
    (Gratzer-Weinberger-Buchholtz 2024, Theorem 8.1; our paper Theorem 5.4).
    Postulated here. -/
axiom directed_univalence_S :
  ∀ (A B : DiscType),
    Function.Bijective (funtohom A B)

/-- Trivial consequence: there is at least one morphism in `HomS A A`
    (the identity, obtained via `funtohom` of `id`). -/
noncomputable def idS (A : DiscType) : HomS A A :=
  funtohom A A id

/-- Functoriality of `Hom.map` preserves identities (a tiny lemma). -/
theorem Hom.map_id {A : Type} (a : A) :
    Hom.map (fun x => x) (Hom.id a) = Hom.id a := by
  rfl

/-- Functoriality of `Hom.map` along an identity preserves shape. -/
theorem Hom.map_shape {A B : Type} (f : A → B) {a b : A} (h : Hom A a b) (t : TwoI) :
    (Hom.map f h).shape t = f (h.shape t) := by
  rfl

/-- Sanity check: the directed-univalence axiom and `idS` produce a
    well-typed identity hom in the discrete universe.  This is purely
    a typecheck. -/
example (A : DiscType) : HomS A A := idS A

end DirectedUnivalence
