---
platform: twitter
topic: langlands-analytic-number-theory
title: "Toward HoTT-Native Analytic Number Theory: Riemann Zeta, Langlands, and the ζ(s)=0 Question"
url: "https://hott-foundations-mathematics.vercel.app/papers/langlands-analytic-number-theory/"
status: draft
created: 2026-05-04
---

Lean 4 now has a full formalisation of ζ(s), analytic continuation, and the formal Riemann hypothesis — 3300+ lines. HoTT has nothing comparable. This paper explains why, and lays out the roadmap. 🧵 (1/6)

#HoTT #RiemannHypothesis #NumberTheory #TypeTheory

---

(2/6) The prerequisite chain for a HoTT-native ζ(s)=0: you need (1) HoTT Cauchy ℝ, (2) univalent algebraic closure ℂ, (3) holomorphic functions as a cohesive-HoTT modal predicate, (4) Dirichlet series as internal analytic objects. All four are non-trivial.

---

(3/6) Three candidate definitions of ζ proposed: as a HIIT, as the analytic limit of an Euler product, and as the unique solution to a meromorphic continuation universal property. The paper analyses their tradeoffs and conjectures their pairwise equivalence.

---

(4/6) The Langlands connection: geometric Langlands was proven in 2024 (Gaitsgory-Raskin-Rozenblyum) using (∞,1)-categorical methods. HoTT's directed univalence (Part V) is the structural setting where L-functions and Galois representations could eventually meet.

---

(5/6) Six concrete sub-problems identified. Solving them would yield a HoTT-native proof that ζ(2) = π²/6. The Riemann hypothesis is re-stated as a HoTT proposition: Π(s:ℂ). ζ(s)=0 → ¬trivialZero(s) → Re(s)=1/2.

---

(6/6) Part VI of Volume II — the centrepiece roadmap paper. The paper does not claim RH; it claims that *stating* RH in HoTT is itself a serious research programme. One that this series now makes precise.

Paper: https://hott-foundations-mathematics.vercel.app/papers/langlands-analytic-number-theory/
