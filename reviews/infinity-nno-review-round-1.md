---
reviewer: gemini-2.5-pro
paper: infinity-nno
round: 1
date: 2026-05-04T23:26:10Z
---

Ripgrep is not available. Falling back to GrepTool.
Here is a peer review of the provided research paper.

***

### Peer Review Report: "Higher-Categorical Natural Numbers Objects: Contractibility, ∞-Toposes, and Lurie's NNO"

**Reviewer:** Gemini Agent

**Overall Recommendation:** Major Revisions

**Summary:** This is a well-structured and ambitious paper that synthesizes results from homotopy type theory (HoTT), higher topos theory, and elementary higher topos theory to argue for the contractibility of the space of Natural Number Objects (NNOs) in an (∞,1)-topos. The central argument—transferring the contractibility result from HoTT to (∞,1)-toposes via Shulman's interpretation theorem—is elegant and sound. The paper does a good job of contextualizing the problem, comparing the different modern definitions of an NNO, and outlining the significance of the result.

However, several major issues related to the clarity of proofs, reliance on inaccessible internal references, and mathematical precision in some arguments must be addressed. The paper is promising but not yet ready for publication.

---

### Critical Issues

None. The central thesis of the paper is well-supported by the cited literature and the logical steps, while sometimes condensed, are directionally correct.

---

### Major Issues

1.  **Reliance on Inaccessible Internal References:** The paper repeatedly cites "Paper III" and "Paper V" (e.g., Abstract, Introduction, Section 2.3, Bibliography entries [20], [21]). For a standalone publication, these references are unacceptable. The key results from these papers (specifically, Theorem 2.7 of Paper III / Theorem 4.4 of Paper V) must be properly stated and proven (or at least robustly sketched) within this manuscript itself.
    *   **Recommendation:** Either integrate the relevant proofs/theorems directly into Section 2.3 or replace the citations with references to established, publicly available literature (e.g., the HoTT book or relevant papers on inductive types).

2.  **Insufficient Proof Sketch for HoTT Contractibility (Theorem 2.6):** The proof sketch is too brief to be convincing. It states that the result follows from "uniqueness of inverses," "univalence," and "standard 'based path space is contractible' argument." This omits the core of the argument. The contractibility of `isInitial(...)` itself, which collapses the infinite tower of coherences, is the crucial part. This relies on the uniqueness of the recursion principle for inductive types, which is a subtle point that should be mentioned.
    *   **Recommendation:** Expand the proof sketch for Theorem 2.6. Explain that the initiality witness `rec_N` provides a center of contraction for the type of morphisms, and path induction over the identity types for `s` and `x_0` shows that the space of such witnesses is contractible. This is the essence of why the `isContr` proposition holds.

3.  **Incorrect Step in Proof of Lambek's Lemma (Lemma 2.4):** The final part of the proof sketch reads: `...h ∘ ι = F(ι ∘ h) ∘ Fι = F(id_I) ∘ Fι = Fι = ι... which by chasing one more diagram is id_FI.` This reasoning is confusing and appears incorrect as written. `Fι = ι` is not an identity, and the jump to `id_FI` is unjustified. The standard argument is that `h` is an `F`-algebra homomorphism from `(I, ι)` to `(FI, Fι)`. The map `ι` is also an `F`-algebra homomorphism from `(I, ι)` to `(I, ι)` by definition. Its image `Fι` is an algebra, and initiality gives a map back. A cleaner argument is needed.
    *   **Recommendation:** Rewrite the proof of Lemma 2.4. A standard approach is to consider the two `F`-algebra maps `(I, ι) → (I, ι)`: `id_I` and `ι ∘ h`. By initiality, they must be equal, so `ι ∘ h = id_I`. For the other direction, consider the maps `h, Fh : (I, ι) → (FI, Fι)`. They do not map to the same object. The argument needs to be more careful. For instance, `h` is the unique map `(I, ι) -> (FI, Fι)`, and one can show that `ι` is a map of F-algebras `(FI, Fι) -> (I, ι)`. Then `h ∘ ι` is a map `(FI, Fι) -> (FI, Fι)`. `id_FI` is also such a map. The uniqueness part of the initial property of `I` needs to be applied carefully.

---

### Minor Issues

1.  **Imprecise Language in Lemma 2.3 Proof:** The proof states: `uniqueness forces v ∘ u = id_I`. The uniqueness is on morphisms `I → I`, so it should be stated that both `v ∘ u` and `id_I` are morphisms `I → I`, and since there is only one, they must be equal. This is a minor point of precision.

2.  **Section on "Set-level contractibility" (Sec 2.2):** This title is slightly misleading. The argument is purely categorical and applies to any 1-category, not just `Set`. Theorem 2.5 is a statement about the *groupoid* of NNOs, not a "set-level" property. The phrasing `(-1)-truncated` for a groupoid equivalent to `*` is also slightly non-standard; typically this would be called contractible or `(-2)-truncated`. A `(-1)-type` is a proposition (a groupoid where any two objects are connected by at most one morphism). A contractible groupoid has a *unique* morphism.
    *   **Recommendation:** Rename Section 2.2 to "1-Categorical Contractibility" or "Rigidity of NNOs". Clarify the truncation levels used.

3.  **Bibliography Style:** The bibliography contains several unusual entries, such as future-dated preprints ([25]), self-citations to a fictional collective ([20], [21], [22]), and URLs to nLab articles that should ideally be cited with a retrieval date. While the "GrokRxiv" framing makes this stylistic, for a formal venue, these would need to be replaced with stable, peer-reviewed sources where possible.

4.  **LaTeX Quality:** The document loads `tikz-cd` but contains no diagrams. The proof of Lambek's Lemma (2.4) is a prime candidate for a simple commutative diagram to improve clarity.

5.  **Small Typos/Grammar:**
    *   Line 47: `is a property, not a structure.` -> `is a property, not a choice of structure.` (for clarity).
    *   Line 120: `the lax limit...` -> It would be clearer to define the objects and morphisms of `PtEndo(E)` directly for readers less familiar with lax limits.
    *   Line 227: `propositional level proposition` -> `propositional-level proposition` or `mere proposition`.

6.  **Clarity on "Externalisation":** In the proof of the Main Theorem (5.1), the step "Externalising (taking global sections) gives a contractible ∞-groupoid in `Spc`" is correct but could benefit from a bit more detail for the intended audience. It essentially means evaluating the internal type in the terminal context. This is also noted as an open problem ([1]), but a sentence of clarification here would help.

***

### VERDICT

VERDICT: MAJOR REVISIONS
