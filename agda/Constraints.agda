module Constraints where

open import Core
open import Primitive
open import StateSpace
open import Operators

postulate
  Satisfies :
    State → Constraint → Set

  HardConstraint :
    Constraint → Set

  SoftConstraint :
    Constraint → Set

  ContextualConstraint :
    Constraint → Set

SatisfiesHardConstraints : State → Set
SatisfiesHardConstraints s =
  (c : Constraint) →
  HardConstraint c →
  Satisfies s c

Feasible : State → Set
Feasible s =
  Admissible s × SatisfiesHardConstraints s

postulate
  OperatorsPreserveFeasible :
    (F : ZOperator) →
    (s : State) →
    Feasible s →
    Feasible (apply F s)


