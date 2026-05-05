---
reviewer: codex (OpenAI)
type: haskell
topic: etcs-izf-folds
round: 2
date: 2026-05-05T00:35:04Z
---

**Findings**

1. **ETCS witnesses are still forgeable / Choice is not actually asserted**
   `src/etcs-izf-folds/ETCS.hs:46` exports `Mono(..)` and `Epi(..)`, so any caller can wrap any morphism as verified mono/epi despite the comments at lines 132-138. Also `ETCS.hs:107` makes Choice `sectionOf :: Epi mor -> Maybe mor`, so an `ETCS` instance can return `Nothing` for every epi and still satisfy the class.
   **Fix:** export `Mono`/`Epi` abstractly, provide checked smart constructors or law-carrying witnesses, and make Choice total at the class boundary, e.g. `sectionOf :: Epi mor -> mor`, with a law checker that verifies `e . sectionOf e = id`.

2. **The span proof ignores the left leg, so invalid "spans from M" can certify invariance**
   `Proofs.hs:116-124` checks `validSpan s`, then uses only `toObj`/`toArr`. `fromObj`/`fromArr` are never checked against `m`. Since `FOLDS.hs:145-154` only checks internal bijectivity and shared P-side keys, a span whose `from` values do not land in `m` can still pass.
   **Fix:** replace or supplement `validSpan` with `validSpanFrom :: Model -> VerySurjective -> Bool`, checking that `map snd fromObj` equals `modObj m` and `map snd fromArr` equals the arrow ids of `m`; better, use `validSpanBetween :: Model -> VerySurjective -> Model -> Bool` and compare both legs plus transported `I/T/E`.

3. **"SmallCat" / `validModel` still validate typed structures, not categories**
   `FOLDS.hs:93-102` validates only dependent typing. `Properties.hs:66-73` generates identity composites only, so generated "categories" with composable non-identity arrows need not contain their composites. There is no totality/functionality of composition, associativity, or identity-law check. Also `FOLDS.hs:117-120` accepts any parallel pair as `E`, despite comments calling `E` arrow equality.
   **Fix:** either rename this layer to `validSignatureTyping`, or add `validCategoryModel` enforcing total unique composition, identities, associativity, and `E` as actual equality or a documented congruence.

4. **QuickCheck still misses the main negative cases**
   The runner exists and exits on failures, but the only negative test is duplicate span keys at `Properties.hs:170-179`. It does not test invalid `T`, invalid `I`, invalid `E`, missing span coverage, bogus `from` legs, or non-category composition tables.
   **Fix:** add fixed negative properties for malformed `modT`, non-loop `modI`, non-diagonal or non-congruent `modE`, missing object/arrow map entries, bad `from` coverage, and a composable-arrow model missing its required composite.

VERDICT: NEEDS_FIX
