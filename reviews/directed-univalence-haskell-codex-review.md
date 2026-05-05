---
reviewer: codex (OpenAI)
type: haskell
topic: directed-univalence
round: 3
date: 2026-05-04T00:38:00Z
---

No remaining issues found.

Verified:
- `Discrete` now includes `toEq :: Hom a -> Maybe (a, a)` at `src/directed-univalence/Directed.hs:142`, with the `Disc` instance at `Directed.hs:188`.
- `invertibleToId` has QuickCheck coverage for identity success, unequal-endpoint rejection, and bad-inverse rejection at `Properties.hs:233`, `Properties.hs:240`, and `Properties.hs:259`; all are run from `Properties.hs:298`.
- `prop_functorialityComposition` now compares with `eqHom` at `Properties.hs:150`.

Verification run:
- `ghc -fforce-recomp -fno-code Main.hs` passed.
- Existing `src/directed-univalence/test` passed all QuickCheck properties, 1000 tests each.

VERDICT: PASS
