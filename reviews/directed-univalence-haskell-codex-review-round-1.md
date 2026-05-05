---
reviewer: codex (OpenAI)
type: haskell
topic: directed-univalence
round: 1
date: 2026-05-04T00:28:00Z
---

Found concrete issues; `ghc -Wall -fforce-recomp -fno-code` is clean, so I did not find missing top-level signatures or incomplete-pattern warnings.

1. [Directed.hs:43](src/directed-univalence/Directed.hs:43): `Hom` does not enforce its stated endpoint invariant. Callers can build `Hom { src = a, tgt = b, shape = const c }`, so `shape I0 == src` and `shape I1 == tgt` are not guaranteed.
Fix: hide `Hom(..)`'s constructor, export a smart constructor like `mkHom :: Eq a => a -> a -> (TwoI -> a) -> Maybe (Hom a)`, or make `Hom` store only the endpoint-respecting data it can soundly represent.

2. [Directed.hs:97](src/directed-univalence/Directed.hs:97): non-composable morphisms silently compose to `identity (src f)`. This makes invalid composition look valid and contaminates downstream Rezk/univalence checks.
Fix: change `compose` to return `Maybe (Hom a)`/`Either String (Hom a)`, or split composable pairs into a separate checked type.

3. [Directed.hs:104](src/directed-univalence/Directed.hs:104): `invertibleToId` accepts bogus inverses because it only checks targets after `compose`, and `compose` already fabricates identities on mismatches. Example shape: `alpha = 0 -> 1`, `beta = 2 -> 3` can pass both guarded target checks through the fallback path.
Fix: require both composites to be valid, compare full composites against `identity (src alpha)` and `identity (tgt alpha)`, and only return equality when `src alpha == tgt alpha`.

4. [Hom.hs:35](src/directed-univalence/Hom.hs:35): `funtohom` ignores `_f`, and [Hom.hs:44](src/directed-univalence/Hom.hs:44) `homtofun` always returns `const b`. This does not encode directed univalence as `Hom_S(A,B) ~= A -> B`; it collapses every function to a constant endpoint.
Fix: either rename this as an endpoint-only toy, or carry an actual function/action in the representation and test extensional equality over generated inputs.

5. [Proofs.hs:98](src/directed-univalence/Proofs.hs:98): `discUnivalenceToy` is tautological. `synthHom` is always true, so the result is `(a == b) == True || (a == b) == False`, which always returns `True` and does not inspect `fromEq`.
Fix: implement the iff directly with `fromEq`: `Just h` should imply `a == b` and valid endpoints/shape; `Nothing` should imply `a /= b`.

6. [Proofs.hs:81](src/directed-univalence/Proofs.hs:81): `composeAssociative` only compares `src` and `tgt`, not the `shape`, while the proof text claims equality of composed morphisms.
Fix: add an extensional `eqHom` over `TwoI` checking `src`, `tgt`, `shape I0`, and `shape I1`, then use it in associativity and endpoint proofs.

7. [Properties.hs:152](src/directed-univalence/Properties.hs:152): QuickCheck coverage for `funtohom` only tests fixed `(+1)` at one point, which cannot catch that `funtohom` ignores the function.
Fix: quantify over `Fun Int Int` and multiple generated inputs, then assert `homtofun (funtohom f) x == f x` across the sample set.

8. [Properties.hs:147](src/directed-univalence/Properties.hs:147): `prop_discUnivalenceToy` only checks the tautological wrapper from `Proofs.hs`, so the "main theorem" test would pass even if `fromEq` were broken.
Fix: replace it with direct forward/backward properties over `fromEq`, including endpoint and shape validation for returned homs.

VERDICT: NEEDS_FIX
