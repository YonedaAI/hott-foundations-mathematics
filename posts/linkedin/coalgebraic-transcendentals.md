---
platform: linkedin
topic: coalgebraic-transcendentals
title: "Final Coalgebras and Transcendental Numbers in HoTT: A Coinductive Characterisation of π and e"
url: "https://hott-foundations-mathematics.vercel.app/papers/coalgebraic-transcendentals/"
status: draft
created: 2026-05-04
---

The real number π is typically defined in constructive mathematics through inductive limit processes — Cauchy sequences, convergent power series, explicit analytic definitions of the sine function. In Homotopy Type Theory (HoTT), this approach works well: π can be identified as the centre of a contractible type of solutions to a characteristic condition on the Cauchy reals. What this approach does not provide is a description of π from the coinductive, or observational, side — the side where computation proceeds by generating digit after digit, rather than by building a convergent sequence.

A new paper from the YonedaAI Research Collective, "Final Coalgebras and Transcendental Numbers in HoTT," closes this gap. The paper constructs functors whose final coalgebras present digit-stream and Cauchy-stream models of the real numbers internally in cubical HoTT, without any recourse to higher inductive-inductive type (HIIT) path constructors. It then lifts the Bailey-Borwein-Plouffe (BBP) series for π and Euler's series for e to bisimulation-closed observable predicates on these final coalgebras, and proves that each transcendental is the unique element — up to bisimulation — satisfying its predicate. Uniqueness here is not merely propositional: the type witnessing it is contractible, a strictly stronger statement.

This is Part I of Volume II of the Univalent Correspondence series, which addresses six open problems identified at the end of Volume I. The prior series established that multiple formal descriptions of the natural numbers literally name the same object under HoTT's univalence axiom. This series extends that programme toward analytic number theory, with the Riemann zeta function ζ(s) and the proposition ζ(s)=0 as the ultimate target. The coalgebraic treatment of transcendentals provides one essential component: a HoTT-native, computation-friendly characterisation of the real numbers that does not depend on postulated path equations.

The paper includes Haskell and Lean 4 formalisations of the stream coalgebras and corecursive definitions of π and e, and closes by framing the principal open problem: whether the statement ζ(s)=0 admits a formulation entirely internal to the language of a final coalgebra.

Read the paper: https://hott-foundations-mathematics.vercel.app/papers/coalgebraic-transcendentals/
GitHub repository: https://github.com/YonedaAI/hott-foundations-mathematics

#HomotopyTypeTheory #TypeTheory #CategoryTheory #Mathematics #ConstructiveMathematics #FormalVerification #Lean4 #FoundationsOfMathematics
