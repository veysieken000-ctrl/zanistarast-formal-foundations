import Zanistarast.Core
import Zanistarast.Primitive
import Zanistarast.StateSpace
import Zanistarast.Operators

namespace Zanistarast

universe u

/-- A constraint is satisfied by a state. -/
constant Satisfies : State → Constraint → Prop

/-- Hard constraints cannot be violated. -/
constant HardConstraint : Constraint → Prop

/-- Soft constraints may be optimized. -/
constant SoftConstraint : Constraint → Prop

/-- Contextual constraints depend on the application domain. -/
constant ContextualConstraint : Constraint → Prop

/-- A state satisfies all hard constraints. -/
def SatisfiesHardConstraints (s : State) : Prop :=
  ∀ c : Constraint, HardConstraint c → Satisfies s c

/-- Feasible states satisfy all hard constraints. -/
def Feasible (s : State) : Prop :=
  Admissible s ∧ SatisfiesHardConstraints s

/-- Canonical operators preserve feasibility. -/
constant OperatorsPreserveFeasible :
  ∀ F : ZOperator,
  ∀ s : State,
  Feasible s → Feasible (F.apply s)

/-- The canonical pipeline preserves feasibility. -/
theorem canonical_preserves_feasible :
  ∀ s : State,
  Feasible s → Feasible (CanonicalPipeline.apply s) := by
  intro s hs
  exact OperatorsPreserveFeasible CanonicalPipeline s hs

end Zanistarast


