module Invariants where

open import Core
open import Primitive
open import StateSpace
open import Operators
open import Constraints
open import Objectives

Invariant : Set
Invariant =
  State → Set

PreservesInvariant : ZOperator → Invariant → Set
PreservesInvariant F I =
  (s : State) →
  I s →
  I (apply F s)

AdmissibilityInvariant : Invariant
AdmissibilityInvariant =
  Admissible

FeasibilityInvariant : Invariant
FeasibilityInvariant =
  Feasible

VerificationInvariant : Invariant
VerificationInvariant =
  Verified

PipelinePreservesInvariant : Invariant → Set
PipelinePreservesInvariant I =
  PreservesInvariant CanonicalPipeline I

postulate

  CanonicalPreservesAdmissibility :
    PipelinePreservesInvariant AdmissibilityInvariant

  CanonicalPreservesFeasibility :
    PipelinePreservesInvariant FeasibilityInvariant

  CanonicalPreservesVerification :
    PipelinePreservesInvariant VerificationInvariant


