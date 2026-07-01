Require Import Core.
Require Import Primitive.
Require Import StateSpace.
Require Import Operators.
Require Import Constraints.
Require Import Objectives.

Module ZanistarastInvariants.

Import ZanistarastCore.
Import ZanistarastPrimitive.
Import ZanistarastStateSpace.
Import ZanistarastOperators.
Import ZanistarastConstraints.
Import ZanistarastObjectives.

(* Invariant *)

Definition Invariant := State -> Prop.

(* Preservation *)

Definition PreservesInvariant
  (F : ZOperator)
  (I : Invariant)
  : Prop :=

forall s,
I s ->
I (apply F s).

(* Canonical invariants *)

Definition AdmissibilityInvariant : Invariant :=
Admissible.

Definition FeasibilityInvariant : Invariant :=
Feasible.

Definition VerificationInvariant : Invariant :=
Verified.

(* Pipeline preservation *)

Definition PipelinePreservesInvariant
  (I : Invariant)
  : Prop :=

PreservesInvariant CanonicalPipeline I.

(* Axioms *)

Axiom CanonicalPreservesAdmissibility :

PipelinePreservesInvariant
AdmissibilityInvariant.

Axiom CanonicalPreservesFeasibility :

PipelinePreservesInvariant
FeasibilityInvariant.

Axiom CanonicalPreservesVerification :

PipelinePreservesInvariant
VerificationInvariant.

End ZanistarastInvariants.


