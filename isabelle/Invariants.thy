theory Invariants
  imports Objectives
begin

type_synonym Invariant = "State ⇒ bool"

definition PreservesInvariant ::
  "ZOperator ⇒ Invariant ⇒ bool"
where
  "PreservesInvariant F I ≡
      (∀s. I s ⟶ I (apply F s))"

definition AdmissibilityInvariant :: Invariant
where
  "AdmissibilityInvariant = Admissible"

definition FeasibilityInvariant :: Invariant
where
  "FeasibilityInvariant = Feasible"

definition VerificationInvariant :: Invariant
where
  "VerificationInvariant = Verified"

definition PipelinePreservesInvariant ::
  "Invariant ⇒ bool"
where
  "PipelinePreservesInvariant I ≡
      PreservesInvariant CanonicalPipeline I"

axiomatization
  CanonicalPreservesAdmissibility ::
    "PipelinePreservesInvariant AdmissibilityInvariant"

and
  CanonicalPreservesFeasibility ::
    "PipelinePreservesInvariant FeasibilityInvariant"

and
  CanonicalPreservesVerification ::
    "PipelinePreservesInvariant VerificationInvariant"

end



