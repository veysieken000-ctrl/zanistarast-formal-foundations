Require Import Core.
Require Import Primitive.
Require Import StateSpace.

Module ZanistarastOperators.

Import ZanistarastCore.
Import ZanistarastPrimitive.
Import ZanistarastStateSpace.

(* Formal operator *)
Record ZOperator := {
  apply : State -> State;

  preserves_admissibility :
    forall s,
      Admissible s ->
      Admissible (apply s)
}.

(* Canonical operators *)

Parameter Hebun : ZOperator.

Parameter Zanabun : ZOperator.

Parameter Mabun : ZOperator.

Parameter Rabun : ZOperator.

Parameter Rasterast : ZOperator.

(* Operator composition *)

Definition compose
  (F G : ZOperator)
  : ZOperator.
Proof.
refine
{|
  apply := fun s => apply F (apply G s)
|}.

intros s H.

apply (preserves_admissibility F).

apply (preserves_admissibility G).

exact H.

Defined.

(* Canonical pipeline *)

Definition CanonicalPipeline :=
compose Rasterast
(compose Rabun
(compose Mabun
(compose Zanabun
Hebun))).

End ZanistarastOperators.


