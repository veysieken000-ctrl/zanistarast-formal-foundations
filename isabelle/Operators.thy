theory Operators
  imports StateSpace
begin

record ZOperator =
  apply :: "State ⇒ State"

consts
  PreservesAdmissible :: "ZOperator ⇒ bool"

consts
  Hebun :: ZOperator
  Zanabun :: ZOperator
  Mabun :: ZOperator
  Rabun :: ZOperator
  Rasterast :: ZOperator

definition compose :: "ZOperator ⇒ ZOperator ⇒ ZOperator"
where
  "compose F G =
    ⦇ apply = apply F ∘ apply G ⦈"

definition CanonicalPipeline :: ZOperator
where
  "CanonicalPipeline =
    compose Rasterast
      (compose Rabun
        (compose Mabun
          (compose Zanabun Hebun)))"

end


