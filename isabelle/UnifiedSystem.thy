theory UnifiedSystem
  imports Yek
begin

record UnifiedSystem =
  initial_state :: State
  execute :: "State ⇒ State"

definition CanonicalSystem :: UnifiedSystem
where
  "CanonicalSystem =
    ⦇ initial_state = InitialState,
      execute = apply CanonicalPipeline ⦈"

definition SuccessfulExecution :: "State ⇒ bool"
where
  "SuccessfulExecution s =
    Verified (execute CanonicalSystem s)"

definition AdmissibleExecution :: "State ⇒ bool"
where
  "AdmissibleExecution s =
    (Admissible s ∧ Feasible s)"

definition Execute :: "State ⇒ State"
where
  "Execute s =
    execute CanonicalSystem s"

axiomatization
  ExecutePreservesAdmissibility ::
    "Admissible s ⟹ Admissible (Execute s)"

and
  ExecutePreservesFeasible ::
    "Feasible s ⟹ Feasible (Execute s)"

and
  ExecutePreservesYek ::
    "PreservesYek CanonicalPipeline"

end



