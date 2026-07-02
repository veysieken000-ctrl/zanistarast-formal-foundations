theory Objectives
  imports Constraints
begin

consts
  ObjectiveValue :: "Objective ⇒ State ⇒ nat"

definition NoWorse :: "Objective ⇒ State ⇒ State ⇒ bool"
where
  "NoWorse J s1 s2 =
    (ObjectiveValue J s1 ≤ ObjectiveValue J s2)"

definition Better :: "Objective ⇒ State ⇒ State ⇒ bool"
where
  "Better J s1 s2 =
    (ObjectiveValue J s1 < ObjectiveValue J s2)"

definition LocallyOptimal :: "Objective ⇒ State ⇒ bool"
where
  "LocallyOptimal J s =
    (Feasible s ∧
      (∀t. Feasible t ⟶ Reachable s t ⟶ NoWorse J s t))"

definition GloballyOptimal :: "Objective ⇒ State ⇒ bool"
where
  "GloballyOptimal J s =
    (Feasible s ∧
      (∀t. Feasible t ⟶ NoWorse J s t))"

definition VerifiedOptimum :: "Objective ⇒ State ⇒ bool"
where
  "VerifiedOptimum J s =
    (Feasible s ∧ Verified s ∧ GloballyOptimal J s)"

definition CanonicalOptimum :: "Objective ⇒ State ⇒ bool"
where
  "CanonicalOptimum J s =
    (VerifiedOptimum J



