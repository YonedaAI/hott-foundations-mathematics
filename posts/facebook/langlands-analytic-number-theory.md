---
platform: facebook
topic: langlands-analytic-number-theory
title: "Toward HoTT-Native Analytic Number Theory: Riemann Zeta, Langlands, and the ζ(s)=0 Question"
url: "https://hott-foundations-mathematics.vercel.app/papers/langlands-analytic-number-theory/"
status: draft
created: 2026-05-04
---

The Riemann Hypothesis is probably the most famous unsolved problem in mathematics. It says that the zeros of a certain function — the Riemann zeta function ζ(s) — all lie on a specific line in the complex plane. A million-dollar prize has been offered for a proof.

But here is a question that almost nobody is asking: what does it even MEAN to state the Riemann Hypothesis inside a modern proof assistant that is based on Homotopy Type Theory?

It turns out this is a harder question than it sounds. A new paper explores exactly why — and lays out a precise research roadmap.

To even WRITE DOWN the statement "ζ(s) = 0 implies Re(s) = 1/2" inside Homotopy Type Theory, you need to build up a long chain of prerequisites, each of which is a research challenge in its own right.

You need the complex numbers — defined constructively, not just axiomatically. You need the concept of a holomorphic (complex-differentiable) function — ideally as a built-in feature of the type theory, not just a definition bolted on. You need the zeta function itself — which is normally defined by an infinite series that only converges in part of the complex plane, and then "analytically continued" to the rest. And you need all of these to be compatible with the foundational principles of Homotopy Type Theory.

For comparison: in Lean 4 (a different proof assistant, based on classical mathematics), the entire infrastructure was completed just last year — taking roughly 3,300 lines of code just for the analytic continuation.

In Homotopy Type Theory, we are starting much further back. This paper identifies exactly where we stand, what needs to be built, and in what order.

The paper does not prove the Riemann Hypothesis. It proves that ASKING the question inside this framework is itself a serious mathematical undertaking — and makes that undertaking precise for the first time.

Read the full paper: https://hott-foundations-mathematics.vercel.app/papers/langlands-analytic-number-theory/

#Mathematics #RiemannHypothesis #NumberTheory #TypeTheory #FormalVerification #MathResearch
