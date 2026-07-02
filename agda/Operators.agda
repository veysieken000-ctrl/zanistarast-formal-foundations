module Operators where

open import Core
open import Primitive
open import StateSpace

record ZOperator : Set where
  field
    apply : State → State

open ZOperator public

postulate
  preservesAdmissible :
    ZOperator → Set

postulate
  Hebun : ZOperator
  Zanabun : ZOperator
  Mabun : ZOperator
  Rabun : ZOperator
  Rasterast : ZOperator

compose : ZOperator → ZOperator → ZOperator
compose F G = record
  { apply = λ s → apply F (apply G s)
  }

CanonicalPipeline : ZOperator
CanonicalPipeline =
  compose Rasterast
    (compose Rabun
      (compose Mabun
        (compose Zanabun Hebun)))



