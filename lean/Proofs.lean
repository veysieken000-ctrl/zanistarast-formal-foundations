import Zanistarast.Core
import Zanistarast.Primitive
import Zanistarast.StateSpace
import Zanistarast.Operators
import Zanistarast.Constraints
import Zanistarast.Objectives
import Zanistarast.Invariants
import Zanistarast.Yek
import Zanistarast.UnifiedSystem
import Zanistarast.Theorems

namespace Zanistarast

/--
Central collection of all machine-checkable proofs.
This namespace serves as the canonical proof layer.
-/

/-- Soundness proof. -/
theorem Soundness :
  AdmissibilitySpec CanonicalSystem :=
canonical_admissibility

/-- Feasibility proof. -/
theorem Feasibility :
  FeasibilitySpec CanonicalSystem :=
canonical_feasibility

/-- Determinism proof. -/
theorem Determinism :
  DeterminismSpec CanonicalSystem :=
canonical_determinism

/-- Verification proof. -/
theorem Verification :
  VerificationSpec CanonicalSystem :=
canonical_verification

/-- Yek preservation proof. -/
theorem YekPreservation :
  YekPreservationSpec :=
canonical_yek_preservation

/--
Master correctness theorem.
-/
theorem UnifiedCorrectness :
  AdmissibilitySpec CanonicalSystem ∧
  FeasibilitySpec CanonicalSystem ∧
  DeterminismSpec CanonicalSystem ∧
  VerificationSpec CanonicalSystem ∧
  YekPreservationSpec :=
by
  repeat' constructor
  · exact Soundness
  · exact Feasibility
  · exact Determinism
  · exact Verification
  · exact YekPreservation

end Zanistarast



