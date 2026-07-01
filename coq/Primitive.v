Require Import Core.

Module ZanistarastPrimitive.

Import ZanistarastCore.

(* Primitive entities *)
Parameter Entity : Type.
Parameter Identity : Type.
Parameter Time : Type.
Parameter Observation : Type.

(* Identity associated with each state *)
Parameter identityOf : State -> Identity.

(* Observation associated with each state *)
Parameter observe : State -> Observation.

(* Time associated with each state *)
Parameter timeOf : State -> Time.

(* Verification result *)
Inductive VerificationResult : Type :=
| VerifiedResult
| RejectedResult
| NeedsRevisionResult.

End ZanistarastPrimitive.



