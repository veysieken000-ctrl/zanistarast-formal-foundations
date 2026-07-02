theory Constraints
  imports Operators
begin

consts
  Satisfies :: "State ⇒ Constraint ⇒ bool"

consts
  HardConstraint :: "Constraint ⇒ bool"

consts
  SoftConstraint :: "Constraint ⇒ bool"

consts
  ContextualConstraint :: "Constraint ⇒ bool"

definition SatisfiesHardConstraints :: "State ⇒ bool"
where
  "SatisfiesHardConstraints s =
    (∀c. HardConstraint c ⟶ Satisfies s c)"

definition Feasible :: "State ⇒ bool"
where
  "Feasible s =
    (Admissible s ∧ SatisfiesHardConstraints s)"

consts
  OperatorsPreserveFeasible :: "ZOperator ⇒ bool"

end


