theory Core
  imports Main
begin

typedecl State
typedecl Operator
typedecl ProofObject
typedecl Constraint
typedecl Objective

consts
  Admissible :: "State ⇒ bool"
  Verified :: "State ⇒ bool"

end


