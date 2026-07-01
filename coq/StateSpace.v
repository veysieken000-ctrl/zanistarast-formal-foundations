Require Import Core.
Require Import Primitive.

Module ZanistarastStateSpace.

Import ZanistarastCore.
Import ZanistarastPrimitive.

(* Admissible states *)
Parameter Admissible : State -> Prop.

(* Verified states *)
Parameter Verified : State -> Prop.

(* State transition relation *)
Parameter Transition : State -> State -> Prop.

(* Initial state *)
Parameter InitialState : State.

(* Terminal state *)
Parameter TerminalState : State.

(* Reachability relation *)
Inductive Reachable : State -> State -> Prop :=
| ReachableRefl :
    forall s,
      Reachable s s
| ReachableStep :
    forall a b c,
      Transition a b ->
      Reachable b c ->
      Reachable a c.

End ZanistarastStateSpace.


