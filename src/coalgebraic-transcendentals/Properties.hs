{-# LANGUAGE ScopedTypeVariables #-}
{-# OPTIONS_GHC -Wall #-}

-- | QuickCheck properties for stream operations and the
--   carry-bisimulation. Run with `runQuickCheckSuite`.
--
--   Properties are stated against the observed-prefix semantics so
--   they test the implementation against an independent reference
--   (a finite-list realisation), rather than against itself.
module Properties
  ( runQuickCheckSuite
  , prop_mapIdentity
  , prop_mapCompose
  , prop_zipWithCommutes
  , prop_carryReflexive
  , prop_carryDualRepresentation
  , prop_constStable
  , prop_natsHead
  , prop_digitsRoundTrip
  , prop_digitsValid
  , prop_digitsZero
  ) where

import Test.QuickCheck
  ( Property
  , (===)
  , quickCheckResult
  , Result
  , isSuccess
  , forAll
  , choose
  )
import qualified Test.QuickCheck as QC

import Streams
  ( Stream(..)
  , constS
  , takeS
  , mapS
  , zipWithS
  , natsFrom
  , approxBaseB
  , digitsBaseB
  )
import Bisimulation (bisimUpTo, carryEqUpTo)

-- | Identity law for mapS: takeS n (mapS id s) == takeS n s.
--   The reference here is the original list of prefix elements,
--   independent of mapS.
prop_mapIdentity :: Int -> Property
prop_mapIdentity seed =
  let s = natsFrom (toInteger seed)
  in takeS 50 (mapS id s) === takeS 50 s

-- | Composition law for mapS, checked at observed prefixes.
--   Reference: list-level fmap composition, not mapS itself.
prop_mapCompose :: Int -> Property
prop_mapCompose seed =
  let s = natsFrom (toInteger seed)
      f, g :: Integer -> Integer
      f = (+ 1)
      g = (* 2)
      lhs = takeS 50 (mapS (g . f) s)
      rhs = map (g . f) (takeS 50 s)   -- independent reference
  in lhs === rhs

-- | zipWithS agrees with the list-level zipWith on prefixes.
--   Uses the non-commutative subtraction so the property is
--   sensitive to argument order.
prop_zipWithCommutes :: Int -> Property
prop_zipWithCommutes seed =
  let s     = natsFrom (toInteger seed)
      t     = natsFrom (toInteger seed + 7)
      lhs   = takeS 50 (zipWithS (-) s t)
      -- Independent reference: list zipWith on observed prefixes.
      rhs   = zipWith (-) (takeS 50 s) (takeS 50 t)
      flhs  = takeS 50 (zipWithS (-) t s)
      frhs  = zipWith (-) (takeS 50 t) (takeS 50 s)
  in QC.conjoin
       [ lhs === rhs
       , flhs === frhs
       , QC.counterexample "non-commutative witness"
           (lhs /= flhs)   -- subtract is non-commutative for distinct args
       ]

-- | Carry-bisimulation is reflexive.
prop_carryReflexive :: Property
prop_carryReflexive =
  forAll (choose (2, 16)) $ \b ->
    forAll (choose (0, 1000)) $ \(seed :: Integer) ->
      let s = mapS (\x -> fromIntegral (x `mod` b)) (natsFrom seed)
      in carryEqUpTo b 30 s s

-- | Nontrivial carry-bisimulation: the dual decimal representations
--   0.0999... and 0.1000... must be carry-equivalent in base 10
--   under the prefix-interval semantics.
prop_carryDualRepresentation :: Property
prop_carryDualRepresentation =
  forAll (choose (1, 200)) $ \(n :: Int) ->
    let s10  = Cons 1 (constS 0)
        sOne = Cons 0 (constS 9)
    in QC.property (carryEqUpTo 10 n sOne s10)

-- | Constant stream is bisimilar to its tail.
prop_constStable :: Int -> Property
prop_constStable seed =
  let s = constS (seed :: Int)
      Cons _ s' = s
  in QC.property (bisimUpTo 50 s s')

-- | Naturals: hd (natsFrom n) = n.
prop_natsHead :: Integer -> Property
prop_natsHead n =
  let Cons x _ = natsFrom n
  in x === n

-- | Digit/approximation round-trip up to truncation: for a
--   rational r in [0,1) and base b, digitsBaseB b r approximates
--   to within b^{-n} after n digits.
prop_digitsRoundTrip :: Property
prop_digitsRoundTrip =
  forAll (choose (2, 16)) $ \b ->
    forAll (choose (0 :: Integer, 999)) $ \num ->
      let r   = fromRational (toRational num / 1000) :: Rational
          ds  = digitsBaseB b r
          n   = 20
          a   = approxBaseB b n ds
          eps = recip (fromInteger b ^ n) :: Rational
      in QC.counterexample
           ("base=" ++ show b ++ " r=" ++ show r ++
            " approx=" ++ show a ++ " eps=" ++ show eps)
           (abs (r - a) <= eps)

-- | Validity: every emitted digit lies in [0, b-1].
prop_digitsValid :: Property
prop_digitsValid =
  forAll (choose (2, 16)) $ \b ->
    forAll (choose (0 :: Integer, 999)) $ \num ->
      let r  = fromRational (toRational num / 1000) :: Rational
          ds = takeS 50 (digitsBaseB b r)
      in QC.counterexample
           ("base=" ++ show b ++ " r=" ++ show r ++ " ds=" ++ show ds)
           (all (\d -> 0 <= d && fromIntegral d < b) ds)

-- | Boundary: the zero rational has all-zero digits in any base.
prop_digitsZero :: Property
prop_digitsZero =
  forAll (choose (2, 16)) $ \b ->
    let ds = takeS 30 (digitsBaseB b (0 :: Rational))
    in ds === replicate 30 0

runQuickCheckSuite :: IO Bool
runQuickCheckSuite = do
  rs <- mapM run
    [ ("mapIdentity",            quickCheckResult prop_mapIdentity)
    , ("mapCompose",             quickCheckResult prop_mapCompose)
    , ("zipWithCommutes",        quickCheckResult prop_zipWithCommutes)
    , ("carryReflexive",         quickCheckResult prop_carryReflexive)
    , ("carryDualRepresentation",quickCheckResult prop_carryDualRepresentation)
    , ("constStable",            quickCheckResult prop_constStable)
    , ("natsHead",               quickCheckResult prop_natsHead)
    , ("digitsRoundTrip",        quickCheckResult prop_digitsRoundTrip)
    , ("digitsValid",            quickCheckResult prop_digitsValid)
    , ("digitsZero",             quickCheckResult prop_digitsZero)
    ]
  return (all isSuccess rs)
  where
    run :: (String, IO Result) -> IO Result
    run (name, act) = do
      putStrLn ("== Property: " ++ name ++ " ==")
      act
