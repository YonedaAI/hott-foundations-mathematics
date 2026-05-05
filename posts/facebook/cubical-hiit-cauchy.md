---
platform: facebook
topic: cubical-hiit-cauchy
title: "Cubical Higher Inductive-Inductive Types and the Cauchy Reals"
url: "https://hott-foundations-mathematics.vercel.app/papers/cubical-hiit-cauchy/"
status: draft
created: 2026-05-04
---

What does it mean to COMPUTE with real numbers inside a proof assistant? Not just approximate them — actually compute, with every step fully justified and verified?

This turns out to be a surprisingly deep question, and a new paper takes a major step toward answering it.

Real numbers are tricky in constructive mathematics. You cannot list them all out. Instead, mathematicians define them as the limits of sequences of fractions — Cauchy sequences. In a proof assistant like Agda, you have to be very careful about HOW you define this, because the way you define it determines what you can actually compute.

The standard approach in Homotopy Type Theory works well for proving theorems. But it relies on "postulated" path equations — rules that are assumed true rather than computed. In a computational setting, this breaks something called canonicity: the guarantee that every well-typed program gives you a concrete answer when you run it.

This new paper fixes that. It gives a complete definition of the real numbers — inside Cubical Agda, a proof assistant where real computation is possible — that preserves canonicity. Every limit construction, every identification of close-enough approximations: it all COMPUTES.

As a demonstration, the paper extracts a program that actually produces rational approximations to the square root of 2, to π, and to e — verified to match Haskell prototypes.

Why does this matter? Because the long-term goal of this research series is to state and study the Riemann zeta function inside Homotopy Type Theory. That requires real numbers that genuinely compute. This paper provides them.

Read the full paper: https://hott-foundations-mathematics.vercel.app/papers/cubical-hiit-cauchy/

#Mathematics #TypeTheory #ProofAssistants #ConstructiveMathematics #FormalVerification #MathResearch
