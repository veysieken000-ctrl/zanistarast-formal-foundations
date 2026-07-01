Module ZanistarastCore.

(* Primitive types *)
Parameter State : Type.
Parameter Operator : Type.
Parameter ProofObject : Type.
Parameter Constraint : Type.
Parameter Objective : Type.

(* Primitive predicates *)
Parameter Admissible : State -> Prop.
Parameter Verified : State -> Prop.

End ZanistarastCore.


