import Zanistarast.Core
import Zanistarast.Primitive
import Zanistarast.StateSpace

namespace Zanistarast

universe u

/-- A formal Zanistarast operator acts on states. -/
structure ZOperator where
  apply : State → State
  preservesAdmissible :
    ∀ s : State, Admissible s → Admissible (apply s)

/-- Hebûn operator. -/
constant Hebun : ZOperator

/-- Zanabûn operator. -/
constant Zanabun : ZOperator

/-- Mabûn operator. -/
constant Mabun : ZOperator

/-- Rabûn operator. -/
constant Rabun : ZOperator

/-- Rasterast operator. -/
constant Rasterast : ZOperator

/-- Operator composition. -/
def compose (F G : ZOperator) : ZOperator :=
{
  apply := fun s => F.apply (G.apply s),
  preservesAdmissible := by
    intro s hs
    exact F.preservesAdmissible (G.apply s) (G.preservesAdmissible s hs)
}

/-- Canonical Zanistarast pipeline. -/
def CanonicalPipeline : ZOperator :=
  compose Rasterast
    (compose Rabun
      (compose Mabun
        (compose Zanabun Hebun)))

end Zanistarast




