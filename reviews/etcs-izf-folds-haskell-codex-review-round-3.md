---
reviewer: codex (OpenAI)
type: haskell
topic: etcs-izf-folds
round: 3
date: 2026-05-05T00:39:50Z
---

**Findings**

1. `src/etcs-izf-folds/FOLDS.hs:196` `validCategoryModel` still does not enforce total composition. `uniqueComposite` only checks triples already present in `modT`; it never enumerates every composable arrow pair and requires exactly one composite. A model with `f : 0 -> 1`, `g : 1 -> 2`, identity-unit triples present, but no `g . f` triple can still pass. Fix: enumerate all `(g,h)` where `src g == tgt h` and require `[k | (g',h',k) <- modT m, g' == g, h' == h]` to be a singleton.

2. `src/etcs-izf-folds/FOLDS.hs:199` The associativity check is wired incorrectly. The comprehension discards the middle arrow `i` from `(h,i,hi)` and passes `gh` as the fourth tuple component; then `src/etcs-izf-folds/FOLDS.hs:231` treats that value as the third arrow in `h . i`. Fix: enumerate `(g,h,gh)` and `(h,i,hi)`, then compare composites `(gh,i,_)` and `(g,hi,_)`.

3. `src/etcs-izf-folds/Proofs.hs:129` The span transport proof ignores the `from` leg. `VerySurjective` defines `fromObj/fromArr` and `toObj/toArr` as `P -> M` and `P -> N` maps at `src/etcs-izf-folds/FOLDS.hs:135`, but `proof_invarianceUnderSpan` uses `toObj/toArr` directly as maps from `M` keys. This only works because the generator makes `from` the identity at `src/etcs-izf-folds/Properties.hs:105`. Fix: derive the actual `M -> N` renaming as `to . inverse(from)` for objects and arrows, and add a QuickCheck case where the P-side keys differ from M ids.

4. `src/etcs-izf-folds/FOLDS.hs:176` `validSpanBetween` claims transported `I/T/E` predicates agree, but only checks object/arrow surjectivity onto `n`. It can accept an `n` with different `modI`, `modT`, or `modE`. Fix: require `validModel m && validModel n`, derive the `M -> N` map through the span, and compare transported `modI/modT/modE` sets against `n`.

Tests: `src/etcs-izf-folds/test` passes all 11 QuickCheck/demo checks, but the suite does not cover the non-identity-from-leg span case or non-identity missing composite/associativity failures above.

VERDICT: NEEDS_FIX
