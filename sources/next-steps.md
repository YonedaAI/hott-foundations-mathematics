# Next Steps

> *Toward the Riemann Hypothesis as a HoTT term — what was actually proved, and what comes next.*

## Did the research solve anything?

**Short answer:** It did not solve the headline question (ζ(s)=0 in HoTT). It made that question precise enough to be attacked, and proved a number of supporting theorems that close known gaps.

### What was actually proved

| Part | Concrete result |
|------|-----------------|
| **I** | π and e as centres of coinductive contractible types: bisimulation-closed predicates $P_\pi, P_e$ on the digit-stream final coalgebra such that $\Sigma_{x : \nu F_b / {\sim}}\, P_\pi(x)$ is contractible. Resolves the dual to the Paper-V Cauchy HIIT route. |
| **II** | Universal property of the cubical Cauchy reals as a HIIT, with uniqueness up to univalent equality. Closes Booij/Mörtberg's incomplete cubical version. |
| **III** | "Univalence boundary" theorem: among {ETCS, IZF, FOLDS, HoTT}, only HoTT internalises SIP as a theorem; the other three need extra axioms or syntactic enforcement. |
| **IV** | Higher contractibility: $\mathrm{NNO}_{(\infty,1)}$ is contractible in any elementary (∞,1)-topos. Plus a Lurie ↔ Rasekh equivalence theorem on the overlap of their definitions. |
| **V** | Directed-SIP for discrete types: directed identity types are equivalent to structure-preserving directed maps, building on Gratzer–Weinberger–Buchholtz 2024. |
| **VI** | The hard one. Part VI explicitly says: *"Part VI does not solve this problem; it formulates it precisely and offers a roadmap."* |

### What the synthesis actually argues

> *"What HoTT contributes is not a new approach to the Riemann hypothesis; it contributes a new language in which the question can be stated."*

The pipeline produced a precise statement of what would have to be proven, decomposed into six "gates":

1. HoTT-native ℂ (via univalent algebraic closure of the Cauchy reals)
2. HoTT-native holomorphic functions
3. HoTT-native Dirichlet series
4. HoTT-native analytic continuation
5. HoTT-native functional equation
6. HoTT-native RH statement

Each gate inherits machinery from one of the six papers. Gates 1–2 inherit from Parts I, II, III. Gates 3–4 from IV, V. Gates 5–6 from VI itself.

So: **what got solved was the framing problem, not the mathematical problem.**

---

## Next steps (in priority order)

The synthesis's Section 12 names six concrete open problems. Ranked by tractability:

1. **Open Question 1 — Coalgebraic ζ(2k).** Most tractable. Extend Part I from π to ζ(2k) ∈ ℚ·π^{2k} via BBP-type extraction in Cubical Agda. Doable with current tooling — this is a months-long formalisation, not a research breakthrough.

2. **Open Question 2 — Cubical analytic continuation library.** A Cubical Agda library implementing the identity theorem and monodromy theorem constructively. Real engineering effort but no conceptual obstacle.

3. **Open Question 4 — Foundational comparison theorem.** Prove: a field-language statement φ is provable in HoTT for $(\mathbb{C}_c, \zeta, +, \times)$ iff provable in classical ZFC for $(\mathbb{C}, \zeta, +, \times)$. This is what would justify treating HoTT-ζ as "really ζ".

4. **Open Question 3 — Directed univalence for non-discrete types.** Extend GWB 2024 from $\mathsf{Spc}$ (discrete) to the full universe of (∞,1)-categorical types. This is the conceptual crux of Part V and the bottleneck for synthetic representation theory (and therefore for Langlands).

5. **Open Question 5 — The (∞,1)-topos for analytic Langlands.** Identify the elementary (∞,1)-topos in which automorphic representations of $\mathrm{GL}(n,\mathbb{A}_\mathbb{Q})$ naturally live. Connects to Clausen–Scholze condensed mathematics. This is where the programme stops being "engineering" and starts being research.

6. **Open Question 6 — RH as a HoTT proposition.** Even setting aside provability, ask: is RH *decidable* inside HoTT? A constructive proof would give an algorithm certifying $\Re(s) = 1/2$ or its negation for any $s$ with $\zeta(s) = 0$.

### Recommendation

If you want to keep momentum: **OQ1 (coalgebraic ζ(2k))** for the next deliverable. It's the only one where the path to a working Cubical Agda formalisation is fully visible from current infrastructure. It would also produce a fourth concrete theorem to anchor the next paper, rather than another roadmap.

If you want to maximise impact: **OQ3 (directed univalence for non-discrete types).** That single result would unblock OQ5, which unblocks the Langlands portion of the programme.

**The honest framing for a follow-up:** Volume II answered *"what would it take?"* Volume III should answer one of the six sub-questions for real.
