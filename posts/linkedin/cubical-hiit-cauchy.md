---
platform: linkedin
topic: cubical-hiit-cauchy
title: "Cubical Higher Inductive-Inductive Types and the Cauchy Reals"
url: "https://hott-foundations-mathematics.vercel.app/papers/cubical-hiit-cauchy/"
status: draft
created: 2026-05-04
---

Constructive analysis requires a rigorous, computable definition of the real numbers. In Homotopy Type Theory (HoTT), the standard approach defines the Cauchy reals as a higher inductive-inductive type (HIIT): a type and an epsilon-closeness relation introduced simultaneously, with path constructors that identify close-enough Cauchy approximants. This construction, due to Booij and the HoTT Book, provides limits by construction with no appeal to countable choice. The problem is that this construction lives in Book HoTT, where path constructors are postulated — their beta-rules are assumed, not derived — and this breaks the canonicity property that makes type theory computationally meaningful.

A new paper, "Cubical Higher Inductive-Inductive Types and the Cauchy Reals," completes the cubical version of this construction. In Cubical Agda, paths are functions from a primitive interval type, univalence is a theorem rather than an axiom, and higher inductive types compute. The paper gives a precise Cubical Agda specification of (ℝ_c, ~) with four constructors — rational embedding, limit, closeness-induced path, and a square constructor replacing propositional truncation — and verifies that the result is an h-set, an Archimedean ordered field, and is equivalent via a Glue type to the Dedekind reals when restricted to located cuts.

This is Part II of Volume II of the Univalent Correspondence series. Its significance extends beyond the immediate construction: a computational Cauchy real is a prerequisite for any HoTT-native treatment of analysis. Transcendental functions, Dirichlet series, and ultimately the Riemann zeta function all require a foundation in which limits reduce rather than being postulated. This paper provides that foundation.

The paper also extracts an executable map producing rational approximants to sqrt(2), π, and e from the constructively-defined unique-existence centres, verified numerically against Haskell prototypes. Three open problems remain: judgmental eta-rules for the relator constructor, full coherence of the IIT elimination principle with Glue types, and integration with the Cubical.HITs library hierarchy.

Read the paper: https://hott-foundations-mathematics.vercel.app/papers/cubical-hiit-cauchy/
GitHub repository: https://github.com/YonedaAI/hott-foundations-mathematics

#HomotopyTypeTheory #CubicalAgda #TypeTheory #ConstructiveMathematics #FormalVerification #FoundationsOfMathematics #Mathematics #ProofAssistants
