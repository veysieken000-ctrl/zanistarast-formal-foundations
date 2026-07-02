module Core where

postulate
  State : Set
  Operator : Set
  ProofObject : Set
  Constraint : Set
  Objective : Set

postulate
  Admissible : State → Set
  Verified : State → Set



