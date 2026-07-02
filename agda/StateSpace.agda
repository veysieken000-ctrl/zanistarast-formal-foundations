module StateSpace where

open import Core
open import Primitive

postulate

  Transition :
    State → State → Set

  InitialState :
    State

  TerminalState :
    State

data Reachable : State → State → Set where

  refl :
    ∀ {s} →
    Reachable s s

  step :
    ∀ {a b c} →

    Transition a b →

    Reachable b c →

    Reachable a c


