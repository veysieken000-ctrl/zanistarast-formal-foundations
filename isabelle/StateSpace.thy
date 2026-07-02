theory StateSpace
  imports Primitive
begin

consts
  Transition :: "State ⇒ State ⇒ bool"

consts
  InitialState :: State

consts
  TerminalState :: State

inductive Reachable :: "State ⇒ State ⇒ bool"
where

Refl:
  "Reachable s s"

|

Step:
  "Transition s t ⟹
   Reachable t u ⟹
   Reachable s u"

end


