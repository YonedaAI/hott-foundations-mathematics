---
reviewer: gemini-2.5-pro
paper: etcs-izf-folds
round: 1
date: 2026-05-04T23:29:04Z
---

Ripgrep is not available. Falling back to GrepTool.
This is a review of the research paper "ETCS, IZF, and FOLDS: Comparative Structural Foundations and the Univalence Boundary."

The paper presents a comprehensive and insightful survey of three alternative foundational systems for mathematics, comparing them through the modern lens of Homotopy Type Theory and the Univalence Axiom. The conceptual framing around the "univalence boundary" is novel and effective, providing a clear organizing principle for a complex field of study. The exposition is exceptionally clear, the mathematical claims are well-supported by the literature, and the inclusion of a concrete case study on monoids is highly effective for illustrating the abstract concepts. This is an excellent contribution that will be valuable to logicians, category theorists, and philosophers of mathematics.

The review is structured into feedback of critical, major, and minor severity.

---

### **Critical Issues**

None. The paper is mathematically sound, and its central claims are well-argued and correctly attribute their origins in the literature.

### **Major Issues**

None. The logical structure, clarity, and completeness of the paper are of high quality.

### **Minor Issues**

The following points are minor suggestions for improving the paper's flow, clarity, and precision.

1.  **Organizational Flow of Final Sections:** The ordering of the final sections could be improved. The paper presents `Conclusion` (Sec 10), then `Worked case study` (Sec 11), then `Discussion (extended)` (Sec 12). A more logical flow would be to present all discussion and case studies before the final conclusion.
    *   **Recommendation:** Reorder the sections to: `Discussion` (Sec 9), `Discussion (extended)` (Sec 12 - perhaps merged with Sec 9), `Worked case study` (Sec 11), and finally `Conclusion` (Sec 10).

2.  **Ambiguity of Function Extensionality in Intro Table:** In the table in Sec 1.3, the entry for Function Extensionality (FE) states that it does not need Univalence ("Needs UA in HoTT?": no). While technically true that FE is weaker than UA, this is potentially misleading. As the paper itself clarifies in Sec 7.3, Voevodsky proved that UA implies FE. In MLTT, FE is an independent axiom.
    *   **Recommendation:** Clarify the table entry. A better entry might be "Implied by UA" or adding a footnote that directs the reader to the more nuanced discussion in Sec 7.3.

3.  **Diagram in Sec 6.5:** The `tikz-cd` diagram showing the "square of interpretations" uses a single arrow `\to` from `IZF+AC` to `ZFC`. However, as the paper correctly notes (citing Diaconescu's theorem), `IZF+AC` is *equivalent* to `ZFC`.
    *   **Recommendation:** Change the arrow from `IZF+AC` to `ZFC` to a double-headed arrow (`\leftrightarrow`) or an isomorphism symbol (`\cong`) to reflect this equivalence.

4.  **Redundancy of ETCS Axiom (A7):** The remark following Definition 2.1 correctly notes that Axiom (A7) (Two-valuedness) is a consequence of other axioms (specifically, well-pointedness and choice in a non-degenerate topos). Listing it as a standalone axiom only to immediately note its redundancy is slightly confusing.
    *   **Recommendation:** Consider either removing (A7) from the primary list and stating it as a proposition, or add a brief parenthetical note to the axiom itself, e.g., "(A7) (Two-valuedness; follows from A5, A6, A8)".

5.  **Strength of IZF Axioms:** The paper uses the Collection schema (I8) for IZF and correctly notes in the following remark that it is stronger than Replacement under intuitionistic logic. However, some literature presents IZF with Replacement.
    *   **Recommendation:** It would be slightly more precise to state explicitly in the preamble to Definition 3.1 that this axiomatization uses the stronger Collection schema, as this choice is significant for the theory's strength.

6.  **FOLDS-equivalence and Identity Arrows:** In the FOLDS signature for categories (Example 4.2), the relation `E(f,g)` is for equality of parallel arrows. It is worth noting that identity arrows are typically handled by a relation `I(f)` expressing "$f$ is an identity". The example correctly lists this, but the prose could be slightly more explicit about the roles of the different relations. This is a very minor point of exposition.

7.  **LaTeX/Formatting:** The LaTeX quality is excellent. There are no notable errors. `\cref` and `\Cref` are used correctly. The custom GrokRxiv header is well-implemented.

---

### **Verdict**

The paper is of exceptional quality, demonstrating a deep command of the subject matter. The identified issues are all minor and easily addressable.

**VERDICT: MINOR REVISIONS**
