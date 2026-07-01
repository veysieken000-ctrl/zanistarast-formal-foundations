import Zanistarast.Core
import Zanistarast.Primitive
import Zanistarast.StateSpace
import Zanistarast.Operators
import Zanistarast.Invariants

namespace Zanistarast

universe u

/-- Two states are Yek-distinguishable if their identities differ. -/
def YekDistinguishable (s t : State) : Prop :=
  identityOf s ≠ identityOf t

/-- Yek uniqueness: distinct verified states cannot share identity. -/
constant YekUniqueness :
  ∀ s t : State,
    Verified s →
    Verified t →
    identityOf s = identityOf t →
    s = t

/-- Yek preservation by an operator. -/
def PreservesYek (F : ZOperator) : Prop :=
  ∀ s t : State,
    YekDistinguishable s t →
    YekDistinguishable (F.apply s) (F.apply t)

/-- Canonical pipeline preserves Yek. -/
constant CanonicalPreservesYek :
  PreservesYek CanonicalPipeline

end Zanistarast



