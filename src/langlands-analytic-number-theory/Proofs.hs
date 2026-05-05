-- | Equational proofs for several identities used in the paper
-- "Toward HoTT-Native Analytic Number Theory" (Long 2026).  Each proof
-- is given in classical equational reasoning style as a comment, and is
-- accompanied by an executable @proof_*@ check that evaluates the
-- equality at concrete values.  Numerical-only sanity checks are named
-- @check_*@ to keep them lexically distinct from sound proofs.
--
-- Convention.  @proof_*@ functions return 'Right ()' when the identity
-- holds (exactly for combinatorial identities; within tolerance for the
-- finite Euler product ↔ P-smooth-sum equality, which is exact in
-- exact arithmetic and only tolerance-bounded in 'Double').  @check_*@
-- functions return 'Right ()' when an /approximation/ residual is below
-- a caller-supplied tolerance.
module Proofs
  ( -- * Euler product: numerical approximation check (NOT a sound proof)
    lhsEulerIdentity
  , rhsEulerIdentity
  , residual
  , check_EulerApproximation
    -- * Euler product: sound finite identity (P-smooth sum form)
  , pSmoothPartialSum
  , proof_EulerFiniteIdentity
    -- * Möbius identity
  , proof_MobiusIdentity
    -- * Dirichlet convolution algebra
  , proof_ConvCommutative
  , proof_ConvIdentityElement
    -- * Bundled runner
  , runAllProofs
  ) where

import qualified Zeta
import qualified Dirichlet
import Dirichlet (Series, coeff)
import Data.Complex (Complex (..), magnitude, realPart)

-- | Compute the first @n@ primes safely.  Returns 'Left' if @n < 1@ or
-- if the sieve cutoff would overflow 'Int', otherwise 'Right ps' with
-- @length ps == n@.  Internally the bound is computed in 'Integer' and
-- only converted to 'Int' once safety is verified.
--
-- We use a doubling search: try cutoff @c = max 16 (4*n*n)@ in 'Integer';
-- if the sieve returns fewer than @n@ primes (it won't for these bounds
-- by Bertrand's postulate, but we are defensive), double and retry up
-- to 30 times before giving up.
firstNPrimes :: Int -> Either String [Int]
firstNPrimes n
  | n < 1                                 = Left "firstNPrimes: n < 1"
  | otherwise                             = go 0 initialBoundI
  where
    -- Initial cutoff in 'Integer' (overflow-free):
    initialBoundI :: Integer
    initialBoundI = max 16 (4 * fromIntegral n * fromIntegral n)

    intMaxI :: Integer
    intMaxI = fromIntegral (maxBound :: Int)

    go :: Int -> Integer -> Either String [Int]
    go iter boundI
      | iter > 30           = Left "firstNPrimes: cutoff doubling exceeded"
      | boundI > intMaxI    = Left ("firstNPrimes: sieve cutoff " ++ show boundI
                                    ++ " exceeds Int range")
      | otherwise           =
          let bound = fromIntegral boundI :: Int
              ps    = Zeta.primesUpTo bound
          in if length ps >= n
               then Right (take n ps)
               else go (iter + 1) (boundI * 2)

-- ---------------------------------------------------------------------------
-- Euler product identity: numerical approximation check
-- ---------------------------------------------------------------------------

-- | LHS of the Euler product identity at finite truncation: partial zeta
-- sum @sum_{n=1..N} 1\/n^s@.  This is /not/ equal to the partial Euler
-- product 'rhsEulerIdentity' below; it merely converges to the same
-- limit.  Use 'proof_EulerFiniteIdentity' for the exact finite identity.
lhsEulerIdentity :: Int -> Complex Double -> Complex Double
lhsEulerIdentity = Zeta.partialZeta

-- | RHS of the Euler product identity at finite truncation: partial
-- Euler product @prod_{p prime, p<=N} 1\/(1 - p^{-s})@.
rhsEulerIdentity :: Int -> Complex Double -> Complex Double
rhsEulerIdentity = Zeta.partialEulerProduct

-- | Residual @|partialZeta N s - partialEulerProduct N s|@.
--
-- For @Re(s) > 1@ this tends to 0 as @N -> infinity@, but is /not/
-- monotone in @N@.
residual :: Int -> Complex Double -> Double
residual n s = magnitude (lhsEulerIdentity n s - rhsEulerIdentity n s)

-- | Numerical approximation check (NOT a sound proof).
--
-- For @Re(s) > 1@, the residual @|partialZeta N s - partialEulerProduct N s|@
-- vanishes as @N -> infinity@.  This function asserts that at a chosen
-- truncation @N@ the residual is below a caller-supplied tolerance.
--
-- The convergence precondition @Re(s) > 1@ is enforced at runtime;
-- callers that already have a 'Zeta.ConvergentS' may unwrap it via
-- 'Zeta.unConvergentS'.
check_EulerApproximation :: Int -> Complex Double -> Double -> Either String ()
check_EulerApproximation n s tol
  | n < 4              = Left ("N=" ++ show n ++ " too small for Euler check")
  | realPart s <= 1    = Left ("Re(s)=" ++ show (realPart s)
                               ++ " is not in the convergent half-plane Re(s)>1")
  | err <= tol         = Right ()
  | otherwise          = Left ("residual " ++ show err ++ " exceeds tol "
                               ++ show tol)
  where
    err = residual n s

-- ---------------------------------------------------------------------------
-- Euler product identity: SOUND finite identity in the P-smooth-sum form
-- ---------------------------------------------------------------------------

-- | Sum of @1/n^s@ over positive integers @n@ that are /P-smooth/ for
-- @P = primesUpTo nPrimes@, with each prime exponent in @[0..maxExp]@.
--
-- Concretely, this enumerates all @n = prod p_i^{e_i}@ with
-- @e_i in [0..maxExp]@ and sums @1\/n^s@.  Choosing @maxExp@ large
-- enough that no required exponent is truncated, this is /exactly/ the
-- expansion of the finite Euler product
-- @prod_{p in P} sum_{k=0..maxExp} p^{-k s}@, i.e. a truncated geometric
-- series for each prime.
pSmoothPartialSum
  :: Int                -- ^ number of primes to include (the smallest 'nPrimes')
  -> Int                -- ^ maximum exponent per prime
  -> Complex Double     -- ^ the exponent @s@
  -> Complex Double
pSmoothPartialSum nPrimes maxExp s =
  sum [ termFromExponentTuple ks | ks <- exponentTuples ]
  where
    -- Smallest 'nPrimes' primes.  Sourced from the safe 'firstNPrimes'
    -- helper, which computes its sieve cutoff in 'Integer' and refuses
    -- to overflow 'Int'.  We /do not/ multiply primes into a single
    -- 'Int' value anywhere — each prime contributes its 'Complex Double'
    -- factor @p ** (-k*s)@ independently.
    primes :: [Int]
    primes = case firstNPrimes nPrimes of
               Right ps -> ps
               Left  e  -> error ("pSmoothPartialSum: " ++ e)

    -- All exponent tuples (k_1, ..., k_nPrimes) with each k_i in [0..maxExp].
    exponentTuples :: [[Int]]
    exponentTuples = go (length primes)
      where
        go :: Int -> [[Int]]
        go 0  = [[]]
        go nP =
          [ k : rest | rest <- go (nP - 1), k <- [0..maxExp] ]

    -- Direct evaluation in Complex Double, no Int product:
    --   prod_{p_i in primes} p_i^{-k_i * s}.
    termFromExponentTuple :: [Int] -> Complex Double
    termFromExponentTuple ks =
      product [ fromIntegral p ** (-s * fromIntegral k)
              | (p, k) <- zip primes ks
              ]

-- | Sound finite identity.  For any prime set @P = primesUpTo nPrimes@
-- and any @maxExp >= 0@, the truncated Euler product equals the sum
-- of @1\/n^s@ over the @P@-smooth integers with exponents bounded by
-- @maxExp@:
--
--     prod_{p in P} sum_{k=0..maxExp} p^{-k s}  ==  sum_{n P-smooth, e_p<=maxExp} 1\/n^s.
--
-- Equational reasoning:
--
--   prod_{p in P} sum_{k=0..maxExp} p^{-k s}
-- = { distributivity over the product: each prime independently selects k_p in [0..maxExp] }
--   sum_{(k_p)_p in P, k_p in [0..maxExp]} prod_{p in P} p^{-k_p s}
-- = { let n = prod_{p in P} p^{k_p}; this is a bijection from such tuples
--     to the set of P-smooth integers with exponents <= maxExp }
--   sum_{n P-smooth, e_p<=maxExp} (prod_{p in P} p^{k_p})^{-s}
-- = { combining the product into n }
--   sum_{n P-smooth, e_p<=maxExp} n^{-s}
-- QED.
--
-- This identity is /finite/ and /exact/: it does not rely on letting
-- @N -> infinity@.  In 'Double' arithmetic we still tolerate a small
-- floating-point residual.
--
-- Note: this identity is purely algebraic.  It does /not/ require
-- @Re(s) > 1@; convergence is only relevant when one lets
-- @nPrimes -> infinity@ and @maxExp -> infinity@.  The function
-- accordingly does not enforce a convergence precondition.
proof_EulerFiniteIdentity
  :: Int                -- ^ number of primes
  -> Int                -- ^ max exponent per prime (must be >= 0)
  -> Complex Double     -- ^ exponent s (any complex value; algebraic identity)
  -> Double             -- ^ tolerance
  -> Either String ()
proof_EulerFiniteIdentity nPrimes maxExp s tol
  | nPrimes < 1        = Left "nPrimes must be >= 1"
  | maxExp  < 0        = Left "maxExp must be >= 0"
  | otherwise          = case firstNPrimes nPrimes of
      Left e   -> Left e
      Right ps
        | length ps /= nPrimes ->
            Left ("requested " ++ show nPrimes ++ " primes, got "
                  ++ show (length ps))
        | err ps <= tol -> Right ()
        | otherwise     -> Left ("finite Euler residual " ++ show (err ps)
                                 ++ " exceeds tol " ++ show tol)
  where
    truncatedEuler :: [Int] -> Complex Double
    truncatedEuler ps =
      product [ sum [ fromIntegral p ** (-s * fromIntegral k)
                    | k <- [0..maxExp]
                    ]
              | p <- ps
              ]

    pSmoothExpansion :: Complex Double
    pSmoothExpansion = pSmoothPartialSum nPrimes maxExp s

    err :: [Int] -> Double
    err ps = magnitude (truncatedEuler ps - pSmoothExpansion)

-- ---------------------------------------------------------------------------
-- Möbius identity
-- ---------------------------------------------------------------------------

-- | Proof (Möbius inversion lemma):
--
--     sum_{d | n} mu(d)  ==  [n == 1].
--
-- Equational reasoning:
--
--   (mu * 1)(n)
-- = { definition of Dirichlet convolution }
--   sum_{d | n} mu(d) * 1(n/d)
-- = { 1(k) = 1 for all k>=1 }
--   sum_{d | n} mu(d)
-- = { classical Möbius identity (cf. Apostol §2.1) }
--   if n == 1 then 1 else 0
-- QED.
--
-- Computational witness: we evaluate (mu * 1)(n) for n in [1..N] and
-- compare to the indicator function of {1}.
proof_MobiusIdentity :: Int -> Either String ()
proof_MobiusIdentity nMax
  | nMax < 1  = Left "nMax must be >=1"
  | otherwise =
      let one  = Dirichlet.constSeries 1 :: Series Int
          conv = Dirichlet.convolve Dirichlet.mobius one
          bad  = [ n | n <- [1..nMax]
                     , coeff conv n /= (if n == 1 then 1 else 0)
                 ]
      in if null bad
           then Right ()
           else Left ("Möbius identity fails at: " ++ show bad)

-- ---------------------------------------------------------------------------
-- Dirichlet convolution algebra
-- ---------------------------------------------------------------------------

-- | Proof (Dirichlet convolution is commutative):
--
--     (a * b)(n)  ==  (b * a)(n).
--
-- Equational reasoning:
--
--   (a * b)(n)
-- = { definition of convolution }
--   sum_{d | n} a(d) * b(n / d)
-- = { reindexing d' = n / d (a bijection on divisors of n) }
--   sum_{d' | n} a(n / d') * b(d')
-- = { commutativity of multiplication in the coefficient ring }
--   sum_{d' | n} b(d') * a(n / d')
-- = { definition of convolution }
--   (b * a)(n)
-- QED.
--
-- Computational witness: evaluate at concrete finitely-supported series.
proof_ConvCommutative :: Int -> Either String ()
proof_ConvCommutative nMax
  | nMax < 1  = Left "nMax must be >=1"
  | otherwise =
      let sA  = Dirichlet.mkSeries (\k -> if k >= 1 && k <= 5 then k       else 0) :: Series Int
          sB  = Dirichlet.mkSeries (\k -> if k >= 1 && k <= 5 then 7 - k   else 0) :: Series Int
          ab  = Dirichlet.convolve sA sB
          ba  = Dirichlet.convolve sB sA
          bad = [ n | n <- [1..nMax], coeff ab n /= coeff ba n ]
      in if null bad
           then Right ()
           else Left ("Commutativity fails at: " ++ show bad)

-- | Proof (delta is a /two-sided/ identity for convolution):
--
--     (delta * a)(n)  ==  a(n)  ==  (a * delta)(n),
--
-- where delta(1) = 1 and delta(k) = 0 for k > 1.
--
-- Equational reasoning (left identity):
--
--   (delta * a)(n)
-- = { definition of convolution }
--   sum_{d | n} delta(d) * a(n / d)
-- = { delta(d) = 0 unless d == 1, and 1 always divides n }
--   delta(1) * a(n / 1)
-- = { delta(1) = 1, and n / 1 = n }
--   a(n)
--
-- Right identity follows by symmetric reasoning (or from
-- 'proof_ConvCommutative').  The executable witness checks /both/
-- @delta * a@ and @a * delta@ at every index in @[1..nMax]@.
proof_ConvIdentityElement :: Int -> Either String ()
proof_ConvIdentityElement nMax
  | nMax < 1  = Left "nMax must be >=1"
  | otherwise =
      let delta = Dirichlet.mkSeries (\k -> if k == 1 then 1 else 0) :: Series Int
          sA    = Dirichlet.mkSeries (\k -> if k >= 1 && k <= 10 then k * k - 3 else 0) :: Series Int
          da    = Dirichlet.convolve delta sA
          ad    = Dirichlet.convolve sA delta
          bads  = [ ("delta*a", n) | n <- [1..nMax], coeff da n /= coeff sA n ]
          badsR = [ ("a*delta", n) | n <- [1..nMax], coeff ad n /= coeff sA n ]
          bad   = bads ++ badsR
      in if null bad
           then Right ()
           else Left ("two-sided identity fails at: " ++ show bad)

-- ---------------------------------------------------------------------------
-- Runner
-- ---------------------------------------------------------------------------

-- | Run every executable proof / approximation check and report
-- success/failure to stdout.  Sound finite identities are reported with
-- @[proof]@; numerical-only convergence checks with @[approx]@.
runAllProofs :: IO ()
runAllProofs = do
  putStrLn "--- Equational proof checks ---"
  report "[approx] Euler approximation (s=3, N=200, tol=5e-3)"
         (check_EulerApproximation 200 (3 :+ 0) 5.0e-3)
  report "[approx] Euler approximation (s=4, N=500, tol=1e-3)"
         (check_EulerApproximation 500 (4 :+ 0) 1.0e-3)
  report "[proof]  Finite Euler = P-smooth sum (5 primes, maxExp=6, s=3, tol=1e-9)"
         (proof_EulerFiniteIdentity 5 6 (3 :+ 0) 1.0e-9)
  report "[proof]  Finite Euler = P-smooth sum (8 primes, maxExp=4, s=4, tol=1e-9)"
         (proof_EulerFiniteIdentity 8 4 (4 :+ 0) 1.0e-9)
  report "[proof]  Möbius identity on [1..50]"           (proof_MobiusIdentity 50)
  report "[proof]  Convolution commutativity on [1..30]" (proof_ConvCommutative 30)
  report "[proof]  Delta is a two-sided convolution identity on [1..30]"
         (proof_ConvIdentityElement 30)
  where
    report :: String -> Either String () -> IO ()
    report label r = case r of
      Right () -> putStrLn $ "  OK   " ++ label
      Left  e  -> putStrLn $ "  FAIL " ++ label ++ " :: " ++ e
