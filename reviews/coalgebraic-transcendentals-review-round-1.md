---
reviewer: gemini-2.5-pro
paper: coalgebraic-transcendentals
round: 1
date: 2026-05-04T23:30:14Z
---

Ripgrep is not available. Falling back to GrepTool.
This review assesses the paper "Final Coalgebras and Transcendental Numbers in HoTT" on its mathematical correctness, clarity, completeness, logical structure, and LaTeX quality.

---
### **Overall Impression**

This is an ambitious and well-written paper that makes a compelling case for the coinductive perspective on real numbers and transcendentals within Homotopy Type Theory. The central thesis—that final coalgebras provide a natural and computationally direct framework for characterizing numbers like $\pi$ and $e$ via streaming algorithms—is clearly articulated and logically developed. The paper successfully bridges concepts from universal coalgebra, cubical HoTT, and classical analysis. The structure is logical, the LaTeX quality is high, and the engagement with related work (both real and fictionalized for context) is effective.

The paper is strong, but a few significant issues, primarily a serious citation error and a lack of detail in a key proof, must be addressed before publication.

---
### **Feedback by Severity**

#### **CRITICAL ISSUES**

None. The core mathematical argument appears sound and internally consistent.

#### **MAJOR REVISIONS**

1.  **Incorrect Citation for the `e` Streaming Algorithm.**
    *   **Location:** Section 6.1, Definition 6.1 (`def:e-coalg`), and Bibliography entry [21].
    *   **Issue:** The paper claims to use the "well-known online algorithm of Sale" for streaming the digits of $e$. However, it cites `[sale-streaming-pi-e]`, which is the Rabinowitz & Wagon paper "A spigot algorithm for the digits of $\pi$". This is a significant factual error. The Sale algorithm for $e$ is a different, much earlier work (e.g., A. H. J. Sale, "The calculation of e to many significant digits", The Computer Journal, 1968).
    *   **Recommendation:** Correct the citation to a paper that actually describes a streaming algorithm for $e$. This is crucial for the credibility of the claimed construction of the $s_e$ stream.

2.  **Insufficient Detail in Main "Internalisation" Proofs.**
    *   **Location:** Section 6.3, Theorems 6.7 (`thm:e-internal`) and 6.8 (`thm:pi-internal`).
    *   **Issue:** These theorems are the paper's core contribution, moving the characterization of $\pi$ and $e$ from one reliant on $\Rc$ to one purely internal to the stream coalgebra. The proof sketches, however, are too brief. They state that uniqueness is proven "by coinduction up-to-context" but give no insight into the structure of the proof. The reader is left to guess what relation $R$ is used and what the "context" (`\Phi`) entails (e.g., arithmetic on the state-space tuples).
    *   **Recommendation:** Expand the proof sketches for Theorems 6.7 and 6.8. Briefly describe the bisimulation relation $R$ and the "up-to" operator $\Phi$ used. This would not require a full formal proof but would give the reader confidence that the claim is well-founded and demonstrate the mechanics of the technique.

#### **MINOR REVISIONS**

1.  **Imprecise Equality Notation.**
    *   **Location:** Section 6.4, Proposition 6.9 (`prop:three-equal`).
    *   **Issue:** The proposition states `$s_L = (\mathrm{base\text{-}conversion}(s_B))$`. This is incorrect; the streams are not equal but bisimilar after base conversion. The prose says "modulo $\bisim_{10}$", but the formula itself should be precise.
    *   **Recommendation:** Change the formula to `$s_L \bisim_{10} (\mathrm{base-conversion}(s_B))$` to align with the paper's own framework, where bisimulation is the relevant notion of equality.

2.  **Clarity on `\alpha_b` Definition.**
    *   **Location:** Section 4.2, Definition 4.3 (`def:approx`).
    *   **Issue:** The definition of $\alpha_b$ relies on a limit of partial sums which "exists because the partial sums form a $b^{-n}$-Cauchy approximation in Booij's sense." While correct, this is a dense statement.
    *   **Recommendation:** Briefly elaborate on why the partial sums are Cauchy. A single phrase like "... a $b^{-n}$-Cauchy approximation, as the tail of the series is bounded by $\sum_{k=n}^{\infty} (b-1)/b^{k+1} = b^{-n}$" would add significant clarity for readers less familiar with these constructions.

3.  **LaTeX/Formatting.**
    *   **Location:** Bibliography entry [29] (`abbott-altenkirch`).
    *   **Issue:** The title "Containers: constructing strictly positive types" should have capitalization preserved. It is currently rendered in sentence case.
    *   **Recommendation:** Enclose the title in double curly braces in the `.bib` file to preserve its original capitalization: `title = {{Containers: constructing strictly positive types}}`.

4.  **Clarity on Bisimulation Definition.**
    *   **Location:** Section 3, Definition 3.4 (`def:bisim`).
    *   **Issue:** The formal definition of an $F$-bisimulation is correct but highly abstract. The subsequent explanatory sentence for the stream functor is very helpful.
    *   **Recommendation:** Consider moving the explanatory sentence to be part of the definition itself or immediately following it as a formal example, as it's essential for understanding the concept in practice. For instance: "That is, for the stream functor $F_A X = A \times X$, a relation $R$ is a bisimulation if for all $(x,y)$ with $R(x,y)$, we have $\hd(x) = \hd(y)$ and $R(\tl(x), \tl(y))$."

---
### **Verdict**

The paper presents a novel and important perspective on fundamental mathematical constants in a sophisticated type-theoretic setting. It is well-structured, clearly written, and demonstrates a deep command of the subject matter. However, the identified major issues, particularly the erroneous citation, must be rectified.

**VERDICT: MAJOR REVISIONS**
