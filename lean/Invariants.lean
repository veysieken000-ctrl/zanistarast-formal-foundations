import Zanistarast.Core
import Zanistarast.Primitive
import Zanistarast.StateSpace
import Zanistarast.Operators
import Zanistarast.Constraints
import Zanistarast.Objectives

namespace Zanistarast

universe u

/-- An invariant is a property of states preserved by operators. -/
def Invariant : Type u :=
  State → Prop

/-- Operator F preserves invariant I. -/
def PreservesInvariant (F : ZOperator) (I : Invariant) : Prop :=
  ∀ s : State, I s → I (F.apply s)

/-- Global admissibility invariant. -/
def AdmissibilityInvariant : Invariant :=
  Admissible

/-- Global feasibility invariant. -/
def FeasibilityInvariant : Invariant :=
  Feasible

/-- Global verification invariant. -/
def VerificationInvariant : Invariant :=
  Verified

/-- Canonical pipeline preserves a given invariant. -/
def PipelinePreservesInvariant (I : Invariant) : Prop :=
  PreservesInvariant CanonicalPipeline I

/-- All canonical operators preserve admissibility. -/
theorem canonical_preserves_admissibility :
  PipelinePreservesInvariant AdmissibilityInvariant := by
  intro s hs
  exact CanonicalPipeline.preservesAdmissible s hs

/-- Feasibility is preserved by the canonical pipeline. -/
theorem canonical_preserves_feasibility :
  PipelinePreservesInvariant FeasibilityInvariant := by
  intro s hs
  exact canonical_preserves_feasible s hs

end Zanistarast



