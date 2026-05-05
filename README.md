# HoTT Foundations of Mathematics, Volume II

Six open problems in homotopy type theory, unified toward ζ(s)=0 as a HoTT-native statement.

This is Volume II of an ongoing series. Volume I (`formalized-foundations-mathematics`) developed naive set theory through the categorical-structural perspective and HoTT proper. Volume II takes the six open problems flagged in Volume I's synthesis and pushes each one closer to resolution, framed by the principal open question:

> **The Riemann zeta function ζ(s)=0 as a HoTT-native statement remains unrealised.**

## Live site

https://hott-foundations-mathematics.vercel.app

## Papers

| Part | Title | Pages | Category |
|------|-------|-------|----------|
| I | [Final Coalgebras and Transcendental Numbers in HoTT](https://hott-foundations-mathematics.vercel.app/papers/coalgebraic-transcendentals/) | 22 | math.LO |
| II | [Cubical Higher Inductive-Inductive Types and the Cauchy Reals](https://hott-foundations-mathematics.vercel.app/papers/cubical-hiit-cauchy/) | 25 | math.LO |
| III | [ETCS, IZF, and FOLDS: Comparative Structural Foundations and the Univalence Boundary](https://hott-foundations-mathematics.vercel.app/papers/etcs-izf-folds/) | 25 | math.LO |
| IV | [Higher-Categorical Natural Numbers Objects: Contractibility, ∞-Toposes, and Lurie's NNO](https://hott-foundations-mathematics.vercel.app/papers/infinity-nno/) | 25 | math.CT |
| V | [Directed Univalence: From Riehl-Shulman to a Complete Principle](https://hott-foundations-mathematics.vercel.app/papers/directed-univalence/) | 20 | math.CT |
| VI | [Toward HoTT-Native Analytic Number Theory: Riemann Zeta, Langlands, and the ζ(s)=0 Question](https://hott-foundations-mathematics.vercel.app/papers/langlands-analytic-number-theory/) | 33 | math.NT |
| VII | [Toward HoTT-Native Analytic Number Theory: A Unified Synthesis of Six Open Problems](https://hott-foundations-mathematics.vercel.app/papers/synthesis/) | 26 | math.LO/NT/CT |

Total: 176 pages, 7 papers.

## Architecture

```
hott-foundations-mathematics/
├── papers/
│   ├── latex/        LaTeX source for all 7 papers (1.3K-79KB each)
│   └── pdf/          Compiled PDFs (300-435KB each)
├── src/              Haskell formal verification (one dir per topic)
│   ├── coalgebraic-transcendentals/
│   ├── cubical-hiit-cauchy/
│   ├── etcs-izf-folds/
│   ├── infinity-nno/
│   ├── directed-univalence/
│   └── langlands-analytic-number-theory/
├── lean/             Lean 4 / Mathlib formalisations (one dir per topic)
├── reviews/          Gemini peer reviews + Codex formatting checks
├── docs/papers/      Pandoc HTML conversions
├── images/           300 DPI cover images
├── posts/            Social media drafts (twitter, linkedin, facebook, bluesky)
├── website/          Next.js 14 / Tailwind / KaTeX site (deployed to Vercel)
├── .knowledge-base.md  Source-context KB used by all research workers
└── README.md
```

## Tech stack

- **LaTeX** (TeX Live / pdflatex) — paper authoring with article + amsmath + amssymb + tikz-cd + hyperref + cleveref + booktabs.
- **Haskell** (GHC 9.10–9.14, QuickCheck 2.15) — executable specifications, equational proofs, property-based testing.
- **Lean 4 / Mathlib4** — formal proof companion (NNO, Cauchy reals, ETCS).
- **Pandoc** — LaTeX → HTML5 conversion.
- **Next.js 14 / TypeScript / Tailwind / KaTeX** — static research site.
- **ImageMagick** — designed 1200×630 OG cards (gradient + rendered title text).
- **Vercel** — static deployment.
- **Gemini 2.5 Pro** — iterative peer review (max 4 rounds, ACCEPT or MINOR REVISIONS verdict).
- **Codex** (OpenAI) — LaTeX formatting and Haskell code review (3-round cap).

## Verification

Every paper passed:
- Iterative Gemini peer review (final verdicts: 1 ACCEPT, 6 MINOR REVISIONS, 1 ACCEPT for synthesis).
- Codex LaTeX formatting check (3-round cap; substantive issues fixed).
- Clean `pdflatex` compilation (no overfull/underfull boxes, no undefined refs).

Every Haskell module compiled with `-Wall -Wextra -Werror`, zero warnings. 85+ QuickCheck properties tested; 45+ equational proofs executed; all passed.

## Build locally

```bash
# Compile a paper
cd papers/latex && pdflatex -interaction=nonstopmode <slug>.tex

# Run Haskell verification for a topic
ghc -Wall -Wextra -Werror -o /tmp/test src/<slug>/*.hs -isrc/<slug> -package QuickCheck
/tmp/test

# Build website
cd website && npm install && npm run build
```

## Author

Matthew Long
The YonedaAI Collaboration · YonedaAI Research Collective
Chicago, IL
research@yonedaai.com · https://yonedaai.com

## Related work

- **Volume I**: [formalized-foundations-mathematics](https://github.com/YonedaAI/formalized-foundations-mathematics) — naive set theory through HoTT proper, six papers + synthesis.
