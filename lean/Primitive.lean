import Zanistarast.Core

namespace Zanistarast

universe u

/-- Primitive entity. -/
constant Entity : Type u

/-- Primitive identity. -/
constant Identity : Type u

/-- Primitive time parameter. -/
constant Time : Type u

/-- Primitive observation. -/
constant Observation : Type u

/-- Primitive verification result. -/
inductive VerificationResult where
  | verified
  | rejected
  | needsRevision
deriving Repr, DecidableEq

/-- A state may possess an identity. -/
constant identityOf : State → Identity

/-- A state may be observed. -/
constant observe : State → Observation

/-- A state may be indexed by time. -/
constant timeOf : State → Time

end Zanistarast



