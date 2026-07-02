theory Yek
  imports Invariants
begin

definition YekDistinguishable ::
  "State ⇒ State ⇒ bool"
where
  "YekDistinguishable s t ≡
      identityOf s ≠ identityOf t"

axiomatization
  YekUniqueness ::
    "Verified s ⟹
     Verified t ⟹
     identityOf s = identityOf t ⟹
     s = t"

definition PreservesYek ::
  "ZOperator ⇒ bool"
where
  "PreservesYek F ≡
      (∀s t.
        YekDistinguishable s t ⟶
        YekDistinguishable (apply F s) (apply F t))"

axiomatization
  CanonicalPreservesYek ::
    "PreservesYek CanonicalPipeline"

end



