module Yek where

open import Core
open import Primitive
open import StateSpace
open import Operators
open import Invariants

postulate

  _≢_ : Identity → Identity → Set

YekDistinguishable : State → State → Set
YekDistinguishable s t =
  identityOf s ≢ identityOf t

postulate

  YekUniqueness :

    (s t : State) →

    Verified s →

    Verified t →

    identityOf s ≡ identityOf t →

    s ≡ t

PreservesYek : ZOperator → Set
PreservesYek F =
  (s t : State) →
  YekDistinguishable s t →
  YekDistinguishable (apply F s) (apply F t)

postulate

  CanonicalPreservesYek :

    PreservesYek CanonicalPipeline


