theory Theorems
  imports UnifiedSystem
begin

definition DeterminismSpec ::
  "UnifiedSystem ⇒ bool"
where
  "DeterminismSpec S =
    (∀s. execute S s = execute S s)"

definition AdmissibilitySpec ::
  "UnifiedSystem ⇒ bool"
where
  "AdmissibilitySpec S =
    (∀s. Admissible s ⟶ Admissible (execute S s))"

definition FeasibilitySpec ::
  "UnifiedSystem ⇒ bool"
where
  "FeasibilitySpec S =
    (∀s. Feasible s ⟶ Feasible (execute S s))"

definition VerificationSpec ::
  "UnifiedSystem ⇒ bool"
where
  "VerificationSpec S =
    (∀s. SuccessfulExecution s ⟶ Verified (execute S s))"

definition YekPreservationSpec ::
  "bool"
where
  "YekPreservationSpec =
    PreservesYek CanonicalPipeline"

theorem CanonicalDeterminism:
  "DeterminismSpec CanonicalSystem"
  unfolding DeterminismSpec_def
  by simp

theorem CanonicalAdmissibility:
  "AdmissibilitySpec CanonicalSystem"
  unfolding AdmissibilitySpec_def CanonicalSystem_def
  using ExecutePreservesAdmissibility Execute_def
  by simp

theorem CanonicalFeasibility:
  "FeasibilitySpec CanonicalSystem"
  unfolding FeasibilitySpec_def CanonicalSystem_def
  using ExecutePreservesFeasible Execute_def
  by simp

theorem CanonicalVerification:
  "VerificationSpec CanonicalSystem"
  unfolding VerificationSpec_def SuccessfulExecution_def
  by simp

theorem CanonicalYek:
  "YekPreservationSpec"
  unfolding YekPreservationSpec_def
  using ExecutePreservesYek
  by simp

end



