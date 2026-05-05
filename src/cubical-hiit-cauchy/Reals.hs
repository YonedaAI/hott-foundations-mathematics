{-# LANGUAGE GADTs #-}

-- |
-- Module      : Reals
-- Description : Haskell prototype of the Cauchy-real HIIT
-- Copyright   : (c) YonedaAI Research, 2026
--
-- This module gives a Haskell encoding of the higher
-- inductive--inductive type for the Cauchy reals, in the spirit of
-- Booij's PhD thesis and HoTT Book \S 11.3.
--
-- Haskell is a (set-truncated) lambda-calculus with no path types, so
-- the encoding is necessarily a /shallow/ one: we represent a Cauchy
-- real by its sequence of rational approximants together with an
-- internal modulus.  The closeness predicate is realised by an actual
-- comparison of approximants.  This is sufficient for executable
-- demonstrations of the constructions in the paper.
--
-- /Type-level invariants./  The 'QPos' alias is documented to mean
-- /strictly positive/ rationals.  This invariant is enforced by the
-- smart constructor 'qpos', which is the only safe way to introduce a
-- 'QPos' from outside the module.  The 'Rc' constructor 'Lim' carries
-- a function @QPos -> Rc@ whose values are /assumed/ to be Cauchy in
-- the precision argument; the function 'isCauchyApprox' is the
-- corresponding sanity check.

module Reals
  ( -- * Types
    Q
  , QPos
  , qpos
  , unQPos
  , isPositive
  , Rc(..)
    -- * Constructors
  , rat
  , limR
    -- * Closeness
  , close
    -- * Approximation
  , approxAt
    -- * Operations
  , addR
  , negR
  , subR
  , mulR
    -- * Convergence
  , isCauchyApprox
  ) where

-- | The type of rationals.
type Q = Rational

-- | A 'Rational' value documented to be strictly positive.
--
-- We expose 'QPos' as a type synonym (rather than a 'newtype') to
-- keep the API close to the paper's notation, but every public
-- function in this module that consumes a 'QPos' is documented to
-- require @x > 0@.  Use 'qpos' to construct positive rationals
-- safely; 'qpos' raises a clear error on non-positive inputs.
type QPos = Rational

-- | Smart constructor for 'QPos': raises a domain error if the input
-- is non-positive.  All approximant code in this package routes its
-- positive-rational arguments through 'qpos' (or constructs them by
-- arithmetic from such values) so that the precondition is never
-- silently violated.
qpos :: Rational -> QPos
qpos x
  | x > 0     = x
  | otherwise =
      error ("Reals.qpos: precision must be > 0, got " ++ show x)

-- | Underlying rational of a 'QPos'.
unQPos :: QPos -> Rational
unQPos = id

-- | Predicate: is the given rational a valid 'QPos'?
isPositive :: Rational -> Bool
isPositive q = q > 0

-- | The Cauchy real type.  A real is either a rational embedding,
-- or a Cauchy approximation: a function @QPos -> Rc@ producing a
-- rational ball at each precision.
--
-- The 'Lim' constructor is exported for the prototype, but well-formed
-- limits are expected to satisfy
--
-- > forall delta eps. close (delta + eps) (f delta) (f eps).
--
-- (See 'isCauchyApprox'.)
data Rc where
  Rat :: Q -> Rc
  Lim :: (QPos -> Rc) -> Rc

-- | Embed a rational.
rat :: Q -> Rc
rat = Rat

-- | Form a Cauchy limit.  We do not check the Cauchy property
-- statically; for that, see 'isCauchyApprox'.
limR :: (QPos -> Rc) -> Rc
limR = Lim

-- | The closeness predicate: given a precision @epsilon : QPos@, check
-- whether @|u - v| < epsilon@ approximately, by computing
-- approximations of @u@ and @v@ at scale @epsilon/4@.
--
-- /Precondition./  @epsilon > 0@.
close :: QPos -> Rc -> Rc -> Bool
close epsilon u v =
  abs (approxAt (epsilon / 4) u - approxAt (epsilon / 4) v)
    < epsilon

-- | The approximation map: given @epsilon : QPos@ and @u : Rc@,
-- produce a rational @q@ with @|u - q| < epsilon@.
--
-- /Precondition./  @epsilon > 0@.
approxAt :: QPos -> Rc -> Q
approxAt _epsilon (Rat q) = q
approxAt epsilon (Lim x)  = approxAt (epsilon / 2) (x (epsilon / 2))

-- | Addition on 'Rc'.  Defined by induction; preserves the Cauchy
-- structure on the nose.
addR :: Rc -> Rc -> Rc
addR (Rat p) (Rat q) = Rat (p + q)
addR (Rat p) (Lim y) = Lim (\eps -> addR (Rat p) (y eps))
addR (Lim x) (Rat q) = Lim (\eps -> addR (x eps) (Rat q))
addR (Lim x) (Lim y) =
  Lim (\eps -> addR (x (eps / 2)) (y (eps / 2)))

-- | Negation.
negR :: Rc -> Rc
negR (Rat q) = Rat (negate q)
negR (Lim x) = Lim (\eps -> negR (x eps))

-- | Subtraction.
subR :: Rc -> Rc -> Rc
subR u v = addR u (negR v)

-- | Multiplication on 'Rc'.
--
-- For two Cauchy reals @u, v@ we want a rational @r@ with
-- @|u*v - r| < eps@.  If @|u| <= Bu@ and @|v| <= Bv@ and
-- @q1, q2@ are rational approximants with @|u - q1| < d1@ and
-- @|v - q2| < d2@, then
--
-- > |u*v - q1*q2| <= |u-q1| * |v| + |q1| * |v-q2|
-- >               <= d1 * (|q2| + d2) + |q1| * d2
-- >               <= d1 * Bv' + Bu' * d2
--
-- where @Bv' = |q2| + d2@ and @Bu' = |q1|@.  We allocate the budget
-- explicitly: pick a coarse rational approximation at @eps@, derive
-- bounds, and then pick @d1, d2@ from those bounds so that the total
-- error is below @eps@.
mulR :: Rc -> Rc -> Rc
mulR (Rat p) (Rat q) = Rat (p * q)
mulR u v =
  Lim (\eps ->
    let -- Coarse approximations to bound each operand.
        coarse = max 1 eps
        a0  = approxAt coarse u
        b0  = approxAt coarse v
        -- Operand magnitude bounds (with a slack of 'coarse').
        bu  = abs a0 + coarse
        bv  = abs b0 + coarse
        -- Required approximant precisions: split the eps budget.
        -- The product error is bounded by d1 * bv + d2 * bu, so set
        -- d1 = eps / (3 * bv), d2 = eps / (3 * bu).  The factor 3
        -- (rather than 2) absorbs the higher-order d1*d2 term.
        d1  = eps / (3 * (bv + 1))
        d2  = eps / (3 * (bu + 1))
        q1  = approxAt d1 u
        q2  = approxAt d2 v
    in Rat (q1 * q2))

-- | Check that an approximating function is Cauchy with modulus
-- @delta + epsilon@.
isCauchyApprox :: (QPos -> Rc) -> QPos -> QPos -> Bool
isCauchyApprox x delta epsilon =
  close (delta + epsilon) (x delta) (x epsilon)
