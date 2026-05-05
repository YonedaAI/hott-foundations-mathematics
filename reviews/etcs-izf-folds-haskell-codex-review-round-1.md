---
reviewer: codex (OpenAI)
type: haskell
topic: etcs-izf-folds
round: 1
date: 2026-05-05T00:28:05Z
---

**Issues**

1. `src/etcs-izf-folds/Properties.hs:2-7` claims testing invariance under FOLDS-equivalence, but the properties only test bijective relabeling of one fixed model and preserve counts (`src/etcs-izf-folds/Properties.hs:29-37`, `106-124`). Counts of objects/arrows/identities are not atomic FOLDS predicates and are not invariant under categorical/FOLDS equivalence. A one-object category is equivalent to a two-object category with isomorphic objects, but `|O|`, `|A|`, and identity count differ.
Concrete fix: replace count tests with satisfaction transport for actual atomic relations `I`, `T`, `E` on transported tuples, or reword the module/demo as "bijective relabeling smoke tests" only.

2. The sample category's composition table is not a valid category table. `src/etcs-izf-folds/Properties.hs:34` gives five triples for the category with `id0`, `id1`, and `f : 0 -> 1`; under either conventional tuple order, at least one of `(0,2,2)` or `(2,1,2)` is ill-typed, and the table should have four identity/unit composites.
Concrete fix: define the tuple convention explicitly, then use only the valid composites, e.g. for `(g,h,k)` meaning `g . h = k`: `(0,0,0)`, `(1,1,1)`, `(2,0,2)`, `(1,2,2)`.

3. `VerySurjective` does not model FOLDS-equivalence. It maps only objects and arrows (`src/etcs-izf-folds/FOLDS.hs:62-68`), omits relation sorts `T`, `I`, `E`, and has no very-surjectivity or compatibility checks. It is also unused by the properties.
Concrete fix: add span maps for every sort, including relation fibers, plus predicates verifying surjectivity and preservation/reflection of `src`, `tgt`, `T`, `I`, and `E`; make the invariance properties quantify over those verified spans.

4. The FOLDS category signature is too flat to enforce dependent typing. `src/etcs-izf-folds/FOLDS.hs:31-50` lists relation symbols, but `Model` stores unvalidated integer tuples (`src/etcs-izf-folds/FOLDS.hs:54-60`), so `T(g,h,k)` need not be composable and `E(f,g)` need not be parallel.
Concrete fix: represent arrows with typed source/target indices and validate relation fibers: `T(g,h,k)` only when `src g == tgt h`, `src k == src h`, `tgt k == tgt g`; `E(f,g)` only when `src f == src g` and `tgt f == tgt g`.

5. The ETCS type-class hierarchy does not encode an ETCS model soundly. `WellPointed` only requires `Cat` despite needing a terminal object/global elements (`src/etcs-izf-folds/ETCS.hs:67-71`); `Choice` takes any morphism, not an epimorphism witness (`src/etcs-izf-folds/ETCS.hs:73-78`); A7/A8 are printed but not represented (`src/etcs-izf-folds/ETCS.hs:88-89`).
Concrete fix: add an aggregate `ETCS` class requiring finite limits, exponentials, subobject classifier, NNO, well-pointedness, choice, two-valuedness, and non-degeneracy; add `Mono`/`Epi` witnesses and law-checking functions for the universal properties.

6. `proof_invarianceUnderRelabel` accepts arbitrary models and only compares predicate outputs (`src/etcs-izf-folds/Proofs.hs:103-110`). The demo passes two manually chosen models with equal counts (`src/etcs-izf-folds/Proofs.hs:137-144`), so it is not proving or checking relabeling/FOLDS equivalence.
Concrete fix: pass a relabeling/equivalence witness into the proof function and verify `m'` is the transported model before comparing predicate satisfaction.

7. QuickCheck coverage is too shallow and failures are not actionable. The generator only permutes `modelM` (`src/etcs-izf-folds/Properties.hs:100-104`), never generates arbitrary finite categories, invalid structures, or equivalence spans; `reportTest` discards failure details and keeps the process successful (`src/etcs-izf-folds/Properties.hs:153-155`). I ran `./src/etcs-izf-folds/test`; it exits 0, but the passing tests are mostly tautological count-preservation checks.
Concrete fix: add generators for law-checked finite categories and verified isomorphisms/equivalences, add negative tests for malformed spans, and make the runner return `IO Bool` or call `exitFailure` on any QuickCheck failure.

VERDICT: NEEDS_FIX
