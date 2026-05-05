---
platform: twitter
topic: coalgebraic-transcendentals
title: "Final Coalgebras and Transcendental Numbers in HoTT: A Coinductive Characterisation of π and e"
url: "https://hott-foundations-mathematics.vercel.app/papers/coalgebraic-transcendentals/"
status: draft
created: 2026-05-04
---

What if π and e didn't need inductive proofs? New paper proves both are definable as unique fixed points of stream coalgebras — no HIIT path constructors required. 🧵 (1/5)

#HoTT #TypeTheory #Mathematics #CategoryTheory

---

(2/5) Standard HoTT defines π and e via Cauchy reals — an inductive higher inductive-inductive type. This paper takes the dual route: final coalgebras of digit-stream functors. Two roads, same destination, different computation rules.

---

(3/5) The key result: the type Σ(s : νF_b). P_π(s) is *contractible*. π is literally the unique element satisfying a bisimulation-closed observable predicate on base-16 digit streams (Bailey-Borwein-Plouffe). Same for e.

---

(4/5) Volume II of the Univalent Correspondence series. This paper (Part I) addresses a gap flagged in Volume I's synthesis: the coalgebraic side of transcendentals was never formalised in HoTT. Now it is — with Haskell + Lean 4 code.

---

(5/5) The open question it closes in on: can ζ(s)=0 be stated entirely inside the language of a final coalgebra? That remains the principal open problem of the series.

Paper: https://hott-foundations-mathematics.vercel.app/papers/coalgebraic-transcendentals/
