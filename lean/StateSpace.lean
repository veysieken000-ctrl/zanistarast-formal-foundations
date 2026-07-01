import Zanistarast.Core
import Zanistarast.Primitive

namespace Zanistarast

universe u

/-- Predicate expressing admissibility. -/
constant Admissible : State → Prop

/-- Canonical verified states. -/
constant Verified : State → Prop

/-- Canonical transition relation. -/
constant Transition : State → State → Prop

/-- Canonical initial state. -/
constant InitialState : State

/-- Canonical terminal state. -/
constant TerminalState : State

/-- Reachability relation. -/
inductive Reachable : State → State → Prop
| refl (s : State) :
    Reachable s s
| step {a b c : State} :
    Transition a b →
    Reachable b c →
    Reachable a c

end Zanistarast



