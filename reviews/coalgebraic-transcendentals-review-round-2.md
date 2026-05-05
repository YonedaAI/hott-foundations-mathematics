---
reviewer: gemini-2.5-pro
paper: coalgebraic-transcendentals
round: 2
date: 2026-05-04T23:33:04Z
---

Ripgrep is not available. Falling back to GrepTool.
This review assesses the paper "Final Coalgebras and Transcendental Numbers in HoTT" on the criteria of mathematical correctness, clarity, completeness, logical structure, and technical (LaTeX) quality.

### General Remarks

This is an exceptionally ambitious and well-written paper that bridges two deep and important fields: the coinductive methods of theoretical computer science and the univalent foundations of mathematics. The central thesis—that transcendental numbers like $\pi$ and $e$ can and should be characterized coinductively within HoTT—is a compelling one. The paper presents a clear, logical narrative, starting from foundational concepts and building systematically towards its main results and a discussion of important open problems. The distinction between the inductive (Cauchy/HIIT) and coinductive (final coalgebra) presentations of the reals is articulated with remarkable clarity, and the comparison table in Section 7 is particularly effective.

The mathematical content is, for the most part, a plausible and innovative application of known concepts (M-types, bisimulation, up-to techniques, spigot algorithms) to the specific context of cubical HoTT. The quality of the prose and the LaTeX typesetting is very high.

Despite these strengths, there are several issues that preclude immediate acceptance.

### Critical Issues

None. The paper does not appear to contain any fatal mathematical errors that would invalidate its core claims. The arguments, while often sketched, follow sound principles.

### Major Issues

1.  **Excessive Reliance on Un-reviewable Prior Work:** The paper's entire logical structure is built upon a series of fictional, self-cited papers (e.g., `[paperIII]`, `[paperV]`, `[synthesis]`). Key theorems and definitions that are foundational to the present work are attributed to these inaccessible sources. For example:
    *   **Line 98, 119, etc.:** The central motivation and background are framed by this fictional series.
    *   **Line 214 (and Thm 3.4):** The crucial property that bisimulation implies path-equality in the paper's cubical HoTT setting is cited as "Theorem 5.3 of Paper III". While this property is expected in a well-behaved cubical model with M-types, its specific formulation and proof are essential for verifying the current paper's results and are not provided.
    *   **Line 423:** The equivalence with the Cauchy HIIT model relies on `paperV`.

    For this paper to be publishable, it must be self-contained. The essential results from the "YonedaAI HoTT Foundations Series" must be integrated into the present paper, at least in an appendix, or the paper must be re-framed to state these results as explicit assumptions.

2.  **Insufficient Detail in Core Proofs:** The most novel and significant contributions of the paper are the internal, purely coinductive characterizations of $\pi$ and $e$ (Theorems 6.7 and 6.8). However, their proofs are highly condensed.
    *   **Lines 378-406 (Proof of Thm 6.7):** The proof sketch for the uniqueness of the stream for $e$ is a critical step. It relies on a bisimulation-up-to argument, but the state space `N^5`, the `state` projection function, and the compatibility of the up-to operator are only mentioned, not detailed. A more thorough exposition is needed to make the argument convincing. The reader should not have to reverse-engineer the spigot algorithm to understand the structure of the proof. The same applies to the proof of Theorem 6.8 for $\pi$.

### Minor Issues

1.  **Ambiguity in the "Internal" Characterization:** In Section 6.4, the paper shows that different algorithms for $\pi$ (Leibniz, Machin, BBP) name the same object by proving their `alpha_b` images are equal in `Rc`. This is a slight retreat from the goal of a purely internal characterization. A truly internal proof would establish a direct bisimulation between the state machines of these different algorithms (after base conversion). While this is a much harder problem, the paper should be more explicit about this limitation. The remark on line 423 acknowledges this but could be sharper.

2.  **Awkward Phrasing and Typos:**
    *   **Line 323:** `\pi := centre of contractible \Cref{def:Pe} sin-zero type` is awkwardly phrased. It should be reworded for clarity, perhaps as: "$\pi$ is defined as the center of the contractible type describing the first positive root of `sin(x)` (cf. Paper V, Definition 8.1)".
    *   **Line 321:** The reference should probably be to a definition in `paperV` as hinted at in line 151, not to `\Cref{def:Pe}` from the current paper.
    *   **Line 434:** `\cite{synthesis} \S 7.3, \S 8 item~2` could be formatted more cleanly as `\cite[\S\S 7.3, 8]{synthesis}`.
    *   **Line 553:** The reference `[HoTTcoind]` is defined but never used in the text.

3.  **Stylistic Concerns:**
    *   **Date of Publication:** The paper is dated `4 May 2026`, and the bibliography contains future-dated entries (e.g., `[loefflerstoll]` from 2025). While internally consistent, this is highly unorthodox for a standard academic publication and may cause confusion.
    *   **GrokRxiv Sidebar:** The sidebar on the first page is non-standard and appears to be a stylistic flourish. It should be removed for a formal submission.

### Verdict

The paper presents a fascinating and important research direction with a high degree of clarity and polish. However, the reliance on an inaccessible body of prior work and the lack of detail in its most critical proofs are major obstacles to publication. The work is promising, but requires substantial revision to become a self-contained, verifiable contribution to the literature.

**VERDICT: MAJOR REVISIONS**
