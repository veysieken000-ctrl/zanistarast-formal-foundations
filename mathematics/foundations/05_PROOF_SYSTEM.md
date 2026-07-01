# Zanistarast Formal Proof System
Version 1.0

---

# Purpose

This document defines the canonical proof system used throughout the
Zanistarast Formal Foundations.

Every theorem and lemma shall be proved using the rules defined here.

---

# 1. Primitive Inference Rules

Modus Ponens

Modus Tollens

Proof by Contradiction

Universal Instantiation

Existential Generalization

Substitution

---

# 2. Proof Objects

Every proof consists of

Premises

↓

Inference Rules

↓

Derived Statements

↓

Conclusion

---

# 3. Proof Validity

A proof is valid if every inference step follows an accepted rule.

---

# 4. Proof Soundness

Only sound inference rules may be used.

---

# 5. Proof Dependencies

Every proof shall explicitly reference

Definitions

Axioms

Lemmas

Previous Theorems

---

# 6. Machine Verifiability

Proofs should be written in a form that can later be translated into
formal proof assistants (e.g. Lean or Coq).

---

# 7. Rasterast Verification

Every completed proof shall pass Rasterast verification before being
accepted into the framework.

---

# Future Work

Formal proof language

Proof automation

Computer-assisted verification





