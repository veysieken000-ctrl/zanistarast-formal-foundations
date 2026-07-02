module Proofs where

open import Core
open import Primitive
open import StateSpace
open import Operators
open import Constraints
open import Objectives
open import Invariants
open import Yek
open import UnifiedSystem
open import Theorems

Soundness :
  AdmissibilitySpec CanonicalSystem
Soundness =
  CanonicalAdmissibility

Feasibility :
  FeasibilitySpec CanonicalSystem
Feasibility =
  CanonicalFeasibility

Determinism :
  DeterminismSpec CanonicalSystem
Determinism =
  CanonicalDeterminism

Verification :
  VerificationSpec CanonicalSystem
Verification =
  CanonicalVerification

YekPreservation :
  YekPreservationSpec
YekPreservation =
  CanonicalYek

UnifiedCorrectness : Set
UnifiedCorrectness =
    AdmissibilitySpec CanonicalSystem
  × FeasibilitySpec CanonicalSystem
  × DeterminismSpec CanonicalSystem
  × VerificationSpec CanonicalSystem
  × YekPreservationSpec

unifiedCorrectness :
  UnifiedCorrectness

unifiedCorrectness =
  ( Soundness
  , ( Feasibility
    , ( Determinism
      , ( Verification
        , YekPreservation ))))



