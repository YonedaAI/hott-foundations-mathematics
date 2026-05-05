---
platform: linkedin
topic: etcs-izf-folds
title: "ETCS, IZF, FOLDS: Comparative Structural Foundations and the Univalence Boundary"
url: "https://hott-foundations-mathematics.vercel.app/papers/etcs-izf-folds/"
status: draft
created: 2026-05-04
---

Zermelo-Fraenkel set theory, mathematics' de facto foundation for a century, permits the sentence "the empty set is an element of the number 7." This is syntactically valid in ZFC, and its truth value depends on how one encodes pairs. The sentence is, in a precise sense, non-structural: it says something about the chosen representation rather than the mathematical content. Three alternative foundations each respond to this problem differently, and understanding which of their structural principles survive — as theorems — in Homotopy Type Theory is the subject of a new comparative paper from YonedaAI Research.

"ETCS, IZF, FOLDS: Comparative Structural Foundations and the Univalence Boundary" examines Lawvere's Elementary Theory of the Category of Sets (ETCS), Friedman's Intuitionistic Zermelo-Fraenkel set theory (IZF), and Makkai's First-Order Logic with Dependent Sorts (FOLDS). Each system enforces structural reasoning through a different mechanism: ETCS replaces membership with function composition; IZF retains membership but removes excluded middle; FOLDS re-engineers the logic so that only isomorphism-invariant predicates are syntactically expressible. The paper establishes bi-interpretation theorems connecting these systems, then measures each against HoTT with the Univalence Axiom.

The central contribution is a precise formulation of the "univalence boundary" — the line separating structural principles that hold unconditionally in HoTT from those that require univalence specifically. On the far side of this boundary: the Structure Identity Principle (SIP) and FOLDS-equivalence-as-identity. On the near side: NNO existence, replacement for small types, and propositional extensionality. The paper formalises this as a comparison table and proves the relevant theorems, with companion code in Haskell and Lean 4.

This is Part III of Volume II of the Univalent Correspondence series, which is building toward a HoTT-native formulation of analytic number theory. Understanding the foundational landscape is prerequisite to understanding what "ζ(s)=0 as a HoTT-native proposition" actually requires — and which parts of that requirement are foundational constraints versus resolvable open problems.

Read the paper: https://hott-foundations-mathematics.vercel.app/papers/etcs-izf-folds/
GitHub repository: https://github.com/YonedaAI/hott-foundations-mathematics

#FoundationsOfMathematics #TypeTheory #CategoryTheory #HomotopyTypeTheory #SetTheory #Mathematics #FormalVerification #LogicInComputerScience
