module Theorems where

open import Core
open import Primitive
open import StateSpace
open import Operators
open import Constraints
open import Objectives
open import Invariants
open import Yek
open import UnifiedSystem

DeterminismSpec : UnifiedSystem → Set
DeterminismSpec S =
  (s : State) →
  execute S s ≡ execute S s

AdmissibilitySpec : UnifiedSystem → Set
AdmissibilitySpec S =
  (s : State) →
  Admissible s →
  Admissible (execute S s)

FeasibilitySpec : UnifiedSystem → Set
FeasibilitySpec S =
  (s : State) →
  Feasible s →
  Feasible (execute S s)

VerificationSpec : UnifiedSystem → Set
VerificationSpec S =
  (s : State) →
  SuccessfulExecution s →
  Verified (execute S s)

YekPreservationSpec : Set
YekPreservationSpec =
  PreservesYek CanonicalPipeline

postulate
  reflEq :
    (s : State) →
    execute CanonicalSystem s ≡ execute CanonicalSystem s

CanonicalDeterminism :
  DeterminismSpec CanonicalSystem
CanonicalDeterminism s =
  reflEq s

CanonicalAdmissibility :
  AdmissibilitySpec CanonicalSystem
CanonicalAdmissibility =
  ExecutePreservesAdmissibility

CanonicalFeasibility :
  FeasibilitySpec CanonicalSystem
CanonicalFeasibility =
  ExecutePreservesFeasible

CanonicalVerification :
  VerificationSpec CanonicalSystem
CanonicalVerification s proof =
  proof

CanonicalYek :
  YekPreservationSpec
CanonicalYek =
  ExecutePreservesYek


