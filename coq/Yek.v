Require Import Core.
Require Import Primitive.
Require Import StateSpace.
Require Import Operators.
Require Import Invariants.

Module ZanistarastYek.

Import ZanistarastCore.
Import ZanistarastPrimitive.
Import ZanistarastStateSpace.
Import ZanistarastOperators.
Import ZanistarastInvariants.

(* Yek distinguishability *)

Definition YekDistinguishable
  (s t : State)
  : Prop :=

identityOf s <> identityOf t.

(* Yek uniqueness *)

Axiom YekUniqueness :

forall s t : State,
Verified s ->
Verified t ->
identityOf s = identityOf t ->
s = t.

(* Yek preservation *)

Definition PreservesYek
  (F : ZOperator)
  : Prop :=

forall s t : State,
YekDistinguishable s t ->
YekDistinguishable (apply F s) (apply F t).

(* Canonical pipeline preserves Yek *)

Axiom CanonicalPreservesYek :

PreservesYek CanonicalPipeline.

End ZanistarastYek.


