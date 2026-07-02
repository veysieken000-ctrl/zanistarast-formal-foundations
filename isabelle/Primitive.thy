theory Primitive
  imports Core
begin

typedecl Entity
typedecl Identity
typedecl Time
typedecl Observation

datatype VerificationResult =
    VerifiedResult
  | RejectedResult
  | NeedsRevisionResult

consts
  identityOf :: "State ⇒ Identity"
  observe :: "State ⇒ Observation"
  timeOf :: "State ⇒ Time"

end


