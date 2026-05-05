---
platform: twitter
topic: cubical-hiit-cauchy
title: "Cubical Higher Inductive-Inductive Types and the Cauchy Reals"
url: "https://hott-foundations-mathematics.vercel.app/papers/cubical-hiit-cauchy/"
status: draft
created: 2026-05-04
---

Book HoTT's Cauchy reals work beautifully — but they *postulate* path constructors. Cubical Agda doesn't allow that. This paper closes the gap with a fully computational HIIT construction. 🧵 (1/4)

#HoTT #CubicalAgda #TypeTheory #ConstructiveMath

---

(2/4) The construction: (ℝ_c, ~) as a simultaneous higher inductive-inductive type in Cubical Agda. The limit constructor uses PathP; the closeness predicate replaces propositional truncation with a PathP-valued square constructor.

---

(3/4) Why it matters: Book HoTT's postulated path constructors break canonicity. Cubical HoTT restores it — univalence becomes a theorem, eliminators compute. This gives a *computational* ℝ_c for downstream analytic number theory.

---

(4/4) Part II of the HoTT Foundations Volume II series, addressing open problem 2 from the prior synthesis: a clean cubical version of the Cauchy reals. The prerequisite chain for a HoTT-native ζ(s)=0 now has one more link in place.

Paper: https://hott-foundations-mathematics.vercel.app/papers/cubical-hiit-cauchy/
