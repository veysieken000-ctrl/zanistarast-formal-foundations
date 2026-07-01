# Hebûn Operator
Version 1.0

---

# Purpose

The Hebûn Operator is the fundamental ontological operator of the
Zanistarast Formal Foundations.

Its role is to determine whether an entity satisfies the minimum
requirements for ontological existence.

All higher-level operators depend on the output of Hebûn.

---

# Definition

The Hebûn Operator is a mapping

ℍ : Ω → Ω

that evaluates the ontological integrity of a system state.

---

# Domain

Ω

Global Operator Space

---

# Codomain

Ω

---

# Input

Ψ

System State

---

# Output

ℍ(Ψ)

returns

Existence Score

0 ≤ ℍ(Ψ) ≤ 1

---

# Interpretation

ℍ(Ψ)=1

Fully consistent ontological state.

---

ℍ(Ψ)=0

Ontological failure.

---

0<ℍ(Ψ)<1

Partially consistent state requiring further evaluation.

---

# Mathematical Representation

Let

I(Ψ)

be the identity consistency,

C(Ψ)

the internal consistency,

P(Ψ)

the persistence over time.

Then

ℍ(Ψ)=f(I,C,P)

where

f

is monotonic in each argument.

One possible normalized realization is

ℍ(Ψ)=w₁I+w₂C+w₃P

subject to

w₁+w₂+w₃=1,

wᵢ≥0.

This weighted form is an example implementation rather than the unique definition of the operator.

---

# Properties

Non-negative

Bounded

Deterministic

Composable

Stable under identical input

---

# Dependencies

00_NOTATION.md

01_DEFINITIONS.md

02_SYMBOL_GLOSSARY.md

SET_THEORY.md

LOGIC.md

ALGEBRA.md

00_OPERATOR_SPACE.md

---

# Future Work

Hebûn Algebra

Hebûn Fixed Points

Hebûn Stability

Hebûn Spectral Analysis

Hebûn Category Representation

---

End of Document



