module Objectives where

open import Core
open import Primitive
open import StateSpace
open import Operators
open import Constraints

postulate
  Nat : Set

  _≤_ : Nat → Nat → Set

  _<_ : Nat → Nat → Set

postulate
  ObjectiveValue :
    Objective → State → Nat

NoWorse : Objective → State → State → Set
NoWorse J s₁ s₂ =
  ObjectiveValue J s₁ ≤ ObjectiveValue J s₂

Better : Objective → State → State → Set
Better J s₁ s₂ =
  ObjectiveValue J s₁ < ObjectiveValue J s₂

LocallyOptimal : Objective → State → Set
LocallyOptimal J s =
  Feasible s ×
  ((t : State) →
    Feasible t →
    Reachable s t →
    NoWorse J s t)

GloballyOptimal : Objective → State → Set
GloballyOptimal J s =
  Feasible s ×
  ((t : State) →
    Feasible t →
    NoWorse J s t)

VerifiedOptimum : Objective → State → Set
VerifiedOptimum J s =
  Feasible s ×
  Verified s ×
  GloballyOptimal J s

CanonicalOptimum : Objective → State → Set
CanonicalOptimum J s =
  VerifiedOptimum J s ×
  Admissible s


