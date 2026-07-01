Require Import Core.
Require Import Primitive.
Require Import StateSpace.
Require Import Operators.
Require Import Constraints.
Require Import Objectives.
Require Import Invariants.
Require Import Yek.

Module ZanistarastUnifiedSystem.

Import ZanistarastCore.
Import ZanistarastPrimitive.
Import ZanistarastStateSpace.
Import ZanistarastOperators.
Import ZanistarastConstraints.
Import ZanistarastObjectives.
Import ZanistarastInvariants.
Import ZanistarastYek.

(* Unified system *)

Record UnifiedSystem := {

  initial_state : State;

  execute : State -> State

}.

(* Canonical system *)

Definition CanonicalSystem : UnifiedSystem :=
{|

  initial_state := InitialState;

  execute := apply CanonicalPipeline

|}.

(* Successful execution *)

Definition SuccessfulExecution
  (s : State)
  : Prop :=

Verified (execute CanonicalSystem s).

(* Admissible execution *)

Definition AdmissibleExecution
  (s : State)
  : Prop :=

Admissible s /\

Feasible s.

(* Execute *)

Definition Execute
  (s : State)
  : State :=

execute CanonicalSystem s.

(* Canonical properties *)

Axiom ExecutePreservesAdmissibility :

forall s,

Admissible s ->

Admissible (Execute s).

Axiom ExecutePreservesFeasible :

forall s,

Feasible s ->

Feasible (Execute s).

Axiom ExecutePreservesYek :

PreservesYek CanonicalPipeline.

End ZanistarastUnifiedSystem.


