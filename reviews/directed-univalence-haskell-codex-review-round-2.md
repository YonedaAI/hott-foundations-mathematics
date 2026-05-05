---
reviewer: codex (OpenAI)
type: haskell
topic: directed-univalence
round: 2
date: 2026-05-04T00:35:00Z
---

**Findings**

1. High: `Disc` is still not actually discrete as a hom type. Public `mkHom` accepts unequal `Disc` endpoints whenever the shape matches those endpoints, while `Discrete (Disc a)` only makes `fromEq` return `Nothing` for unequal values. That means callers can still construct `Hom (Disc Int)` from `Disc 1` to `Disc 2`, contradicting the stated "hom iff equality" model. See [Directed.hs](src/directed-univalence/Directed.hs:69), [Directed.hs](src/directed-univalence/Directed.hs:172), and the unequal `Disc` hom generator in [Properties.hs](src/directed-univalence/Properties.hs:76). Concrete fix: either separate general `Hom` from a restricted `DiscHom` smart constructor, or add/use a `toEq :: Hom a -> Maybe ...` direction in `Discrete` and make the "discrete univalence" theorem test arbitrary homs, not just `fromEq`.

2. Medium: the Rezk Round 1 fix is implemented, but not covered by QuickCheck. `invertibleToId` uses `eqHom` at [Directed.hs](src/directed-univalence/Directed.hs:163), but `Properties.hs` only tests `isRezkWitness` on identity at [Properties.hs](src/directed-univalence/Properties.hs:197), which does not exercise `invertibleToId`, inverse composition, or rejection cases. Concrete fix: add properties for identity inverse success, unequal `alpha/beta` rejection, and wrong-endpoint `beta` rejection, and run them in `runAllProperties`.

3. Low: `prop_functorialityComposition` claims an extensional functoriality law but only compares `src` and `tgt` at [Properties.hs](src/directed-univalence/Properties.hs:151). In the current two-point interval this is mostly equivalent for well-formed homs, but it is weaker than the rest of the Round 1 direction and would miss shape regressions if the encoding grows. Concrete fix: replace the endpoint conjunction with `property (eqHom lhs rhs)`.

Round 1 fixes 1, 2, 3, 4, 5, 6, 7, and 8 are visibly addressed in the current source. I found no missing top-level type signatures or incomplete pattern warnings under `ghc -Wall -fno-code -isrc/directed-univalence src/directed-univalence/Main.hs`; the existing `test` executable also passes all listed QuickCheck properties.

VERDICT: NEEDS_FIX
