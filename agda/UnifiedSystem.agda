module UnifiedSystem where

open import Core
open import Primitive
open import StateSpace
open import Operators
open import Constraints
open import Objectives
open import Invariants
open import Yek

record UnifiedSystem : Set where
  field
    initialState : State
    execute : State → State

open UnifiedSystem public

CanonicalSystem : UnifiedSystem
CanonicalSystem = record
  { initialState = InitialState
  ; execute = apply CanonicalPipeline
  }

SuccessfulExecution : State → Set
SuccessfulExecution s =
  Verified (execute CanonicalSystem s)

AdmissibleExecution : State → Set
AdmissibleExecution s =
  Admissible s × Feasible s

Execute : State → State
Execute s =
  execute CanonicalSystem s

postulate

  ExecutePreservesAdmissibility :
    (s : State) →
    Admissible s →
    Admissible (Execute s)

  ExecutePreservesFeasible :
    (s : State) →
    Feasible s →
    Feasible (Execute s)

  ExecutePreservesYek :
    PreservesYek CanonicalPipeline


