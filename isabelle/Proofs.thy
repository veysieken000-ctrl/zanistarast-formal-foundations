theory Proofs
  imports Theorems
begin

theorem Soundness:
  "AdmissibilitySpec CanonicalSystem"
  using CanonicalAdmissibility
  by simp

theorem Feasibility:
  "FeasibilitySpec CanonicalSystem"
  using CanonicalFeasibility
  by simp

theorem Determinism:
  "DeterminismSpec CanonicalSystem"
  using CanonicalDeterminism
  by simp

theorem Verification:
  "VerificationSpec CanonicalSystem"
  using CanonicalVerification
  by simp

theorem YekPreservation:
  "YekPreservationSpec"
  using CanonicalYek
  by simp

theorem UnifiedCorrectness:
  "AdmissibilitySpec CanonicalSystem ∧
   FeasibilitySpec CanonicalSystem ∧
   DeterminismSpec CanonicalSystem ∧
   VerificationSpec CanonicalSystem ∧
   YekPreservationSpec"
  using Soundness Feasibility Determinism Verification YekPreservation
  by simp

end


