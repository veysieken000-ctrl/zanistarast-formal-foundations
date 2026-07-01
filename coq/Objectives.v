Require Import Core.
Require Import Primitive.
Require Import StateSpace.
Require Import Operators.
Require Import Constraints.

Module ZanistarastObjectives.

Import ZanistarastCore.
Import ZanistarastPrimitive.
Import ZanistarastStateSpace.
Import ZanistarastOperators.
Import ZanistarastConstraints.

(* Objective value *)

Parameter ObjectiveValue :
  Objective -> State -> nat.

(* Preference relations *)

Definition NoWorse
  (J : Objective)
  (s1 s2 : State)
  : Prop :=
  ObjectiveValue J s1 <= ObjectiveValue J s2.

Definition Better
  (J : Objective)
  (s1 s2 : State)
  : Prop :=
  ObjectiveValue J s1 < ObjectiveValue J s2.

(* Local optimum *)

Definition LocallyOptimal
  (J : Objective)
  (s : State)
  : Prop :=

Feasible s /\
forall t,
Feasible t ->
Reachable s t ->
NoWorse J s t.

(* Global optimum *)

Definition GloballyOptimal
  (J : Objective)
  (s : State)
  : Prop :=

Feasible s /\
forall t,
Feasible t ->
NoWorse J s t.

(* Verified optimum *)

Definition VerifiedOptimum
  (J : Objective)
  (s : State)
  : Prop :=

Feasible s /\
Verified s /\
GloballyOptimal J s.

(* Canonical optimum *)

Definition CanonicalOptimum
  (J : Objective)
  (s : State)
  : Prop :=

VerifiedOptimum J s /\
Admissible s.

End ZanistarastObjectives.



