Require Import Core.
Require Import Primitive.
Require Import StateSpace.
Require Import Operators.

Module ZanistarastConstraints.

Import ZanistarastCore.
Import ZanistarastPrimitive.
Import ZanistarastStateSpace.
Import ZanistarastOperators.

Parameter Satisfies : State -> Constraint -> Prop.

Parameter HardConstraint : Constraint -> Prop.
Parameter SoftConstraint : Constraint -> Prop.
Parameter ContextualConstraint : Constraint -> Prop.

Definition SatisfiesHardConstraints (s : State) : Prop :=
  forall c : Constraint,
    HardConstraint c ->
    Satisfies s c.

Definition Feasible (s : State) : Prop :=
  Admissible s /\ SatisfiesHardConstraints s.

Parameter OperatorsPreserveFeasible :
  forall F : ZOperator,
  forall s : State,
    Feasible s ->
    Feasible (apply F s).

Theorem canonical_preserves_feasible :
  forall s : State,
    Feasible s ->
    Feasible (apply CanonicalPipeline s).
Proof.
intros s H.
apply OperatorsPreserveFeasible.
exact H.
Qed.

End ZanistarastConstraints.


