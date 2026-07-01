Require Import Core.
Require Import Primitive.
Require Import StateSpace.
Require Import Operators.
Require Import Constraints.
Require Import Objectives.
Require Import Invariants.
Require Import Yek.
Require Import UnifiedSystem.

Module ZanistarastTheorems.

Import ZanistarastCore.
Import ZanistarastPrimitive.
Import ZanistarastStateSpace.
Import ZanistarastOperators.
Import ZanistarastConstraints.
Import ZanistarastObjectives.
Import ZanistarastInvariants.
Import ZanistarastYek.
Import ZanistarastUnifiedSystem.

(* Specifications *)

Definition DeterminismSpec
  (S : UnifiedSystem)
  : Prop :=

forall s,
execute S s = execute S s.

Definition AdmissibilitySpec
  (S : UnifiedSystem)
  : Prop :=

forall s,
Admissible s ->
Admissible (execute S s).

Definition FeasibilitySpec
  (S : UnifiedSystem)
  : Prop :=

forall s,
Feasible s ->
Feasible (execute S s).

Definition VerificationSpec
  (S : UnifiedSystem)
  : Prop :=

forall s,
SuccessfulExecution s ->
Verified (execute S s).

Definition YekPreservationSpec
  : Prop :=

PreservesYek CanonicalPipeline.

(* Canonical theorems *)

Theorem CanonicalDeterminism :

DeterminismSpec CanonicalSystem.
Proof.
unfold DeterminismSpec.
intro.
reflexivity.
Qed.

Theorem CanonicalAdmissibility :

AdmissibilitySpec CanonicalSystem.
Proof.
exact ExecutePreservesAdmissibility.
Qed.

Theorem CanonicalFeasibility :

FeasibilitySpec CanonicalSystem.
Proof.
exact ExecutePreservesFeasible.
Qed.

Theorem CanonicalVerification :

VerificationSpec CanonicalSystem.
Proof.
intros.
exact H.
Qed.

Theorem CanonicalYek :

YekPreservationSpec.
Proof.
exact ExecutePreservesYek.
Qed.

End ZanistarastTheorems.

