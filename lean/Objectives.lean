import Zanistarast.Core
import Zanistarast.Primitive
import Zanistarast.StateSpace
import Zanistarast.Operators
import Zanistarast.Constraints

namespace Zanistarast

universe u

/-- An objective assigns a preference relation over states. -/
constant ObjectiveValue : Objective → State → Nat

/-- State s₁ is no worse than s₂ under objective J. -/
def NoWorse (J : Objective) (s₁ s₂ : State) : Prop :=
  ObjectiveValue J s₁ ≤ ObjectiveValue J s₂

/-- State s₁ is strictly better than s₂ under objective J. -/
def Better (J : Objective) (s₁ s₂ : State) : Prop :=
  ObjectiveValue J s₁ < ObjectiveValue J s₂

/-- A feasible state is locally optimal under objective J. -/
def LocallyOptimal (J : Objective) (s : State) : Prop :=
  Feasible s ∧
  ∀ t : State,
    Feasible t →
    Reachable s t →
    NoWorse J s t

/-- A feasible state is globally optimal under objective J. -/
def GloballyOptimal (J : Objective) (s : State) : Prop :=
  Feasible s ∧
  ∀ t : State,
    Feasible t →
    NoWorse J s t

/-- Verified optimum: feasible, verified, and globally optimal. -/
def VerifiedOptimum (J : Objective) (s : State) : Prop :=
  Feasible s ∧
  Verified s ∧
  GloballyOptimal J s

/-- Canonical optimum under the Zanistarast system. -/
def CanonicalOptimum (J : Objective) (s : State) : Prop :=
  VerifiedOptimum J s ∧
  Admissible s

end Zanistarast


