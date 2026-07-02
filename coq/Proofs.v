Require Import Core.
Require Import Primitive.
Require Import StateSpace.
Require Import Operators.
Require Import Constraints.
Require Import Objectives.
Require Import Invariants.
Require Import Yek.
Require Import UnifiedSystem.
Require Import Theorems.

Module ZanistarastProofs.

Import ZanistarastCore.
Import ZanistarastPrimitive.
Import ZanistarastStateSpace.
Import ZanistarastOperators.
Import ZanistarastConstraints.
Import ZanistarastObjectives.
Import ZanistarastInvariants.
Import ZanistarastYek.
Import ZanistarastUnifiedSystem.
Import ZanistarastTheorems.

(* Master proof collection *)

Theorem Soundness :
  AdmissibilitySpec CanonicalSystem.
Proof.
exact CanonicalAdmissibility.
Qed.

Theorem Feasibility :
  FeasibilitySpec CanonicalSystem.
Proof.
exact CanonicalFeasibility.
Qed.

Theorem Determinism :
  DeterminismSpec CanonicalSystem.
Proof.
exact CanonicalDeterminism.
Qed.

Theorem Verification :
  VerificationSpec CanonicalSystem.
Proof.
exact CanonicalVerification.
Qed.

Theorem YekPreservation :
  YekPreservationSpec.
Proof.
exact CanonicalYek.
Qed.

Theorem UnifiedCorrectness :

AdmissibilitySpec CanonicalSystem /\
FeasibilitySpec CanonicalSystem /\
DeterminismSpec CanonicalSystem /\
VerificationSpec CanonicalSystem /\
YekPreservationSpec.

Proof.

repeat split.

- exact Soundness.

- exact Feasibility.

- exact Determinism.

- exact Verification.

- exact YekPreservation.

Qed.

End ZanistarastProofs.

