---
reviewer: gemini-2.5-pro
paper: cubical-hiit-cauchy
round: 1
date: 2026-05-04T23:27:49Z
---

Ripgrep is not available. Falling back to GrepTool.
Here is a peer review of the provided research paper.

***

### **Review of "Cubical Higher Inductive--Inductive Types and the Cauchy Reals"**

**Summary:** This paper presents a Cubical Agda formalization of the Cauchy real numbers as a Higher Inductive-Inductive Type (HIIT), filling a gap identified in previous work that relied on a "Book HoTT" postulational approach. The author(s) define the type `Rc` and its closeness relation `close` simultaneously and prove four key results: (R1) `Rc` is an h-set, (R2) it satisfies the universal property of a Cauchy completion, (R3) it is equivalent to the located Dedekind reals, and (R4) it allows for the computational extraction of rational approximants.

The paper is well-structured, clearly motivated, and addresses an important topic at the intersection of constructive analysis, homotopy type theory, and proof assistants. The core contribution—the explicit Cubical Agda HIIT definition and the verification of its properties—is significant. The overall quality of the writing and logical flow is high. However, there are several issues, including two major ones, that must be addressed before publication.

---

### **Feedback by Severity**

#### **CRITICAL ISSUES**

None. The paper's central thesis and approach are sound.

#### **MAJOR ISSUES**

1.  **Ill-Typed Subtraction in Closeness Constructors (Correctness):** The HIIT constructors `rat-lim` (line 232, 338) and `lim-lim` (line 235, 342) use subtraction on variables of type `Q+` (strictly positive rationals). For example, `close (epsilon - delta) ...` is used. However, the type `Q+` is not closed under subtraction; if `delta >= epsilon`, the term `epsilon - delta` is not in `Q+`. This makes the constructors ill-typed as written. The paper must explicitly state the precondition that ensures the result of the subtraction remains in `Q+` (e.g., `epsilon > delta`). This precondition must be added to the definition of the constructors in both the Book HoTT recap (Section 2.2) and the Cubical Agda definition (Section 5.1). This is a crucial detail for the formal correctness of the entire construction.

2.  **Redefinition of LaTeX's `\lim` Command (LaTeX Quality):** Line 89 (`\newcommand{\lim}{\mathsf{lim}}`) redefines the standard, primitive LaTeX command `\lim` used for mathematical limits. This is extremely poor practice, as it can break other mathematical formatting in the document and conflicts with standard packages. The command should be renamed to something non-conflicting, for instance, `\hlim` or `\limc` (for the HIIT limit constructor), and used consistently throughout the paper.

#### **MINOR ISSUES**

1.  **Ambiguous `\close` Macro (LaTeX Quality):** Line 95 defines `\newcommand{\close}{\sim}`. However, throughout the paper, the closeness relation is written with a subscript, as in `$u \close_{\varepsilon} v$` (e.g., line 224). This indicates the macro is not being used as intended and is potentially confusing. It would be better to either remove the macro entirely or define it to take the subscript as an argument, for example, `\newcommand{\close}[1]{\stackrel{#1}{\sim}}`, to enforce notational consistency.

2.  **Futuristic Dates in Bibliography (Clarity/Formatting):** Several references contain futuristic access or publication dates (e.g., "accessed 2026" on line 599, "November 2025" on line 627). These appear to be placeholders and should be corrected to reflect the actual dates.

3.  **Clarity on Constructive Cauchy Definition (Clarity):** The paper uses the `isCauchyApprox` definition from Booij (line 223: `x_{\delta} \close_{\delta + \varepsilon} x_{\varepsilon}`). While correct, this formulation using a modulus of convergence may be unfamiliar to readers only accustomed to the classical `(ε, N)` definition of a Cauchy sequence. A single sentence of clarification in Section 2.2, explaining that this is the standard constructive formulation, would improve readability for a broader audience.

4.  **Clarity on `lim` Constructor Indexing (Clarity):** The `lim` constructor (line 222) takes a function `x : Q+ -> Rc`. This is a significant detail, as it differs from the common presentation of Cauchy sequences indexed by natural numbers (`\N`). While this is the correct approach for this construction, a brief note explaining this choice in Section 2.2 would be helpful for the reader.

5.  **Presentation of Extracted Approximants (Clarity):** In the table in Section 7.3, it is not immediately clear what precision was used for the approximations. The table should be updated to explicitly show the input to the `approx` function, for example: `$\mathsf{approx}_{10^{-3}}(\sqrt{2})$` yields `$1414/1000$`.

6.  **Inconsistent Capitalization in Bibliography (Formatting):** The title in reference [15] (line 623) appears to have incorrect capitalization ("Cubical synthetic homotopy theory" should likely be "Cubical Synthetic Homotopy Theory"). Please review all titles for consistent and correct capitalization.

---

### **Final Recommendation**

The paper makes a valuable contribution by providing a concrete, computational construction of the Cauchy reals in Cubical Agda. The work is well-contextualized and the results are significant. However, the unaddressed issue regarding subtraction in `Q+` represents a potential flaw in the correctness of the core definition, and the redefinition of `\lim` is a serious technical anti-pattern. Both must be fixed.

**VERDICT: MAJOR REVISIONS**
