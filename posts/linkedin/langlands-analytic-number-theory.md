---
platform: linkedin
topic: langlands-analytic-number-theory
title: "Toward HoTT-Native Analytic Number Theory: Riemann Zeta, Langlands, and the ζ(s)=0 Question"
url: "https://hott-foundations-mathematics.vercel.app/papers/langlands-analytic-number-theory/"
status: draft
created: 2026-05-04
---

In March 2025, Loeffler and Stoll completed a Lean 4 / Mathlib formalisation of the Riemann zeta function: analytic continuation, the functional equation, non-vanishing on Re(s) ≥ 1, and the formal statement of the Riemann hypothesis — roughly 3,300 lines of Lean for the analytic continuation alone. This is a landmark in computer-verified mathematics. In Homotopy Type Theory, the situation is starkly different: we have no comparable formalisation, and the question of even stating ζ(s)=0 as a HoTT-native proposition — with ζ a HoTT-native object — remains an open research programme. A new paper from YonedaAI Research formulates that programme precisely.

"Toward HoTT-Native Analytic Number Theory: Riemann Zeta, Langlands, and the ζ(s)=0 Question" traces the prerequisite chain that any HoTT-native definition of ζ must respect: Cauchy real numbers as a higher inductive-inductive type, complex numbers via univalent algebraic closure, holomorphic functions as a modal predicate in cohesive HoTT, and Dirichlet series as internal analytic objects. It then proposes three candidate HoTT-native definitions of ζ — as a HIIT, as the analytic limit of an Euler product, and as the unique solution to a meromorphic continuation universal property — and analyses their tradeoffs. Six concrete sub-problems are identified whose resolution would yield a HoTT-native proof that ζ(2) = π²/6. The paper also situates the work relative to Gaitsgory-Raskin-Rozenblyum's 2024 proof of geometric Langlands and to Clausen-Scholze condensed mathematics.

The Riemann hypothesis is re-stated as a HoTT proposition: Π(s:ℂ_c). ζ(s)=0 → ¬trivialZero(s) → Re(s)=1/2. Getting to even this statement requires the full machinery developed in Parts I-V of this series. The paper does not claim to prove the Riemann hypothesis; it claims, more modestly but with precision, that stating it inside HoTT is itself a non-trivial research programme — and it takes the first concrete steps.

This is Part VI of Volume II, the centrepiece roadmap paper of the series. It serves both as a standalone contribution and as the destination toward which all other parts of this volume are oriented.

Read the paper: https://hott-foundations-mathematics.vercel.app/papers/langlands-analytic-number-theory/
GitHub repository: https://github.com/YonedaAI/hott-foundations-mathematics

#NumberTheory #HomotopyTypeTheory #RiemannHypothesis #Langlands #TypeTheory #FormalVerification #Mathematics #AnalyticNumberTheory
