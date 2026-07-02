module Primitive where

open import Core

postulate
  Entity : Set
  Identity : Set
  Time : Set
  Observation : Set

data VerificationResult : Set where
  verified : VerificationResult
  rejected : VerificationResult
  needsRevision : VerificationResult

postulate
  identityOf : State → Identity
  observe : State → Observation
  timeOf : State → Time


