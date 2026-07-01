import Zanistarast.Core
import Zanistarast.Primitive
import Zanistarast.StateSpace
import Zanistarast.Operators
import Zanistarast.Constraints
import Zanistarast.Objectives
import Zanistarast.Invariants
import Zanistarast.Yek

namespace Zanistarast

universe u

/--
The unified Zanistarast formal system.
-/
structure UnifiedSystem where
  initialState : State
  execute : State → State

/--
Canonical unified system.
-/
def CanonicalSystem : UnifiedSystem :=
{
  initialState := InitialState,
  execute := CanonicalPipeline.apply
}

/--
A successful execution.
-/
def SuccessfulExecution (s : State) : Prop :=
  Verified (CanonicalSystem.execute s)

/--
An admissible execution.
-/
def AdmissibleExecution (s : State) : Prop :=
  Admissible s ∧
  Feasible s

/--
Canonical execution.
-/
def Execute (s : State) : State :=
  CanonicalSystem.execute s

/--
Canonical system preserves admissibility.
-/
theorem execute_preserves_admissibility :
  ∀ s : State,
    Admissible s →
    Admissible (Execute s) := by
  intro s hs
  exact CanonicalPipeline.preservesAdmissible s hs

/--
Canonical system preserves feasibility.
-/
theorem execute_preserves_feasible :
  ∀ s : State,
    Feasible s →
    Feasible (Execute s) := by
  intro s hs
  exact canonical_preserves_feasible s hs

/--
Canonical system preserves Yek.
-/
theorem execute_preserves_yek :
  PreservesYek CanonicalPipeline :=
by
  exact CanonicalPreservesYek

end Zanistarast



