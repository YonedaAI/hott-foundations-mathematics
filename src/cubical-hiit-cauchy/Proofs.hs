-- |
-- Module      : Proofs
-- Description : Equational proofs of Cauchy completeness laws
-- Copyright   : (c) YonedaAI Research, 2026
--
-- Equational proofs of selected lemmas from the paper, executed at
-- the value level rather than at the type level.  These witness, in
-- the Haskell prototype, the equational reasoning that the cubical
-- Agda implementation discharges by reduction.
--
-- /Status of the @proof*@ functions./  Each @proof*@ function below
-- comprises two parts:
--
--   1. A pen-and-paper /equational chain/ in the Haddock comment,
--      with each step labelled by the definition or lemma that
--      justifies it.  This is the actual proof.
--
--   2. An executable /finite sample check/ that re-evaluates the
--      equation at one or more concrete precisions.  This is a
--      regression test, not an exhaustive proof: passing it is
--      necessary but not sufficient for correctness.
--
-- The Main demonstration prints the result of (2) as @PASS@ or
-- @FAIL@ to make it clear that what is being /executed/ is a sample
-- check rather than a discharged universal claim.

module Proofs
  ( -- * Lemma 5.6 (closeness implies path)
    proofCloseImpliesEqual
    -- * Lemma 7.2 (approximation correctness)
  , proofApproxClose
    -- * Theorem 5.5 (existence half of the universal property)
  , extendUniformly
    -- * Auxiliary
  , proofAddIsExtension
  ) where

import Reals
  ( QPos
  , Rc(..)
  , close
  , approxAt
  , addR
  )

-- ---------------------------------------------------------------------------
-- Lemma 5.6 -- closeness at every precision implies equality
-- ---------------------------------------------------------------------------

-- | Lemma 5.6 (executable form).
--
-- /Pen-and-paper proof./
--
-- @
--    forall eps. close eps u v          -- hypothesis
--   = { definition of close }
--    forall eps. |approx_{eps/4} u - approx_{eps/4} v| < eps
--   = { Lemma 5.4: u = lim approx u, v = lim approx v }
--    u = v
-- @
--
-- /Executable form./  We test the hypothesis at a /family/ of
-- decreasing precisions and report whether closeness holds at all
-- of them.  This is a finite witness of the (universally quantified)
-- antecedent; it does not by itself entail equality, but if the
-- hypothesis fails at any sample precision, no proof is possible.
proofCloseImpliesEqual
  :: Rc
  -> Rc
  -> QPos        -- ^ smallest tested precision
  -> Bool
proofCloseImpliesEqual u v eps0 =
  let precisions = [eps0 * (1 / 2 ^ (k :: Int)) | k <- [0 .. 6]]
  in all (\eps -> close eps u v) precisions

-- ---------------------------------------------------------------------------
-- Lemma 7.2 -- approxAt produces eps-close rationals
-- ---------------------------------------------------------------------------

-- | Lemma 7.2 (executable form).
--
-- /Statement./  For any @u : Rc@ and @eps > 0@,
-- @close eps u (Rat (approxAt eps u)) = True@.
--
-- /Pen-and-paper proof./
--
-- @
--    close eps u (Rat (approxAt eps u))
--   = { definition of close }
--    |approx_{eps/4} u - approx_{eps/4} (Rat (approxAt eps u))| < eps
--   = { approxAt _ (Rat q) = q }
--    |approx_{eps/4} u - approxAt eps u| < eps
--   = { triangle inequality, both terms approximate u }
--    True
-- @
proofApproxClose :: Rc -> QPos -> Bool
proofApproxClose u eps =
  close eps u (Rat (approxAt eps u))

-- ---------------------------------------------------------------------------
-- Theorem 5.5 -- existence of the uniform extension
-- ---------------------------------------------------------------------------

-- | Existence half of the universal property for the Cauchy reals.
--
-- Given a uniformly continuous @f : Q -> a@ together with the
-- /pointwise limit/ @limOp :: [a] -> a@ (which here we take as a
-- left fold over a non-empty list of finer and finer samples), we
-- extend @f@ to a function @Rc -> a@.
--
-- The cubical Agda version takes any h-set @a@; for executability we
-- specialise to 'Double'.  The previous prototype confused the role
-- of the limit operation by using a binary fold; the present version
-- takes a list-shaped limit operator so that the algebra is explicit.
extendUniformly
  :: (Rational -> Double)   -- ^ uniformly continuous on Q
  -> ([Double] -> Double)   -- ^ pointwise limit of a sample sequence
  -> Rc
  -> Double
extendUniformly f _lim (Rat q)  = f q
extendUniformly f lim  (Lim x)  =
  -- Sample at decreasing precisions; the pointwise limit operator
  -- selects the limiting value of the sequence.
  let s0  = extendUniformly f lim (x (1 / 2 ^ ( 4 :: Int)))
      ss  = [ extendUniformly f lim (x (1 / 2 ^ (n :: Int)))
            | n <- [5 .. 20] ]
  in lim (s0 : ss)

-- ---------------------------------------------------------------------------
-- Auxiliary: addition is the uniform extension of rational addition
-- ---------------------------------------------------------------------------

-- | Sanity: addition is uniformly continuous on Q (the Lipschitz
-- bound is @|p_1 - p_2| + |q_1 - q_2|@), so it lifts to
-- @Rc -> Rc -> Rc@.  We do not need to invoke 'extendUniformly' for
-- this since 'addR' is defined directly; the property is exposed for
-- testing.
proofAddIsExtension :: Rc -> Rc -> QPos -> Bool
proofAddIsExtension u v eps =
  let q1 = approxAt (eps / 4) u
      q2 = approxAt (eps / 4) v
  in close eps (addR u v) (Rat (q1 + q2))
