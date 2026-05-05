---
platform: facebook
topic: etcs-izf-folds
title: "ETCS, IZF, FOLDS: Comparative Structural Foundations and the Univalence Boundary"
url: "https://hott-foundations-mathematics.vercel.app/papers/etcs-izf-folds/"
status: draft
created: 2026-05-04
---

Here is a strange fact about the foundations of mathematics: in the system that most mathematicians use (called ZFC set theory), the sentence "the empty set is an element of the number 7" is grammatically valid. You can ask whether it is true or false. Its truth value depends entirely on HOW you chose to encode the number 7 — which is a completely arbitrary choice.

Most mathematicians never notice this because they follow an unwritten rule: only prove things that don't depend on those arbitrary choices. But the FORMALISM itself doesn't enforce that rule. You could, technically, break it.

Three alternative foundations of mathematics each try to solve this problem differently:

ETCS (Elementary Theory of the Category of Sets) replaces the idea of "sets with members" with "sets with functions between them." All that matters is how things map to each other, not what they "are made of."

IZF (Intuitionistic Zermelo-Fraenkel) keeps the membership-based approach but removes the law of excluded middle, making the logic constructive. Structural reasoning emerges indirectly through the logic.

FOLDS (First-Order Logic with Dependent Sorts) redesigns the logic itself so that only statements which are the SAME for isomorphic objects can even be written down. It is impossible to ask whether ø is in 7.

A new paper compares all three, and asks a precise question: which of the good structural principles in these systems become THEOREMS once you add the Univalence Axiom from Homotopy Type Theory?

The answer is subtle. Some principles — like the Structure Identity Principle — genuinely require univalence. Others hold in weaker settings. The paper draws a precise "univalence boundary" and proves exactly where each principle falls.

Read the full paper: https://hott-foundations-mathematics.vercel.app/papers/etcs-izf-folds/

#Mathematics #Foundations #SetTheory #TypeTheory #Logic #MathResearch
