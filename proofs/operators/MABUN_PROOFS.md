# Formal Proofs of Mabûn Operator Theorems

Version 1.0

---

# Purpose

This document contains the formal proofs of the principal Mabûn
Operator theorems.

The proofs follow the Zanistarast Formal Proof System.

---

# Proof of M-T1

Feasible Allocation

Assume

ℳ(R) ≥ τm

By definition,

the optimized allocation satisfies every feasibility constraint.

Therefore,

the resulting allocation belongs to the feasible solution set.

Q.E.D.

---

# Proof of M-T2

Constraint Preservation

Assume all declared constraints are satisfied before optimization.

Mabûn optimizes only within the feasible region.

Hence,

all constraints remain satisfied after optimization.

Q.E.D.

---

# Proof of M-T3

Resource Conservation

Assume no external source or sink exists.

The optimization redistributes resources without creating or destroying
the conserved quantity.

Therefore,

resource conservation holds.

Q.E.D.

---

# Proof of M-T4

Equilibrium Improvement

Assume a feasible allocation with a higher equilibrium score exists.

The optimization functional selects an admissible optimum.

Therefore,

Mabûn cannot return a strictly inferior admissible allocation.

Q.E.D.

---

# Proof of M-T5

Hebûn–Zanabûn Dependency

The domain of Mabûn is ΩZ.

ΩZ exists only after Hebûn and Zanabûn validation.

Therefore,

Hebûn and Zanabûn are necessary prerequisites.

Q.E.D.

---

# Proof of M-T6

Closure

Given

R ∈ ΩZ

Since

ℳ : ΩZ → ΩZ

closure follows directly.

Q.E.D.

---

# Proof of M-T7

Rasterast Eligibility

Rasterast evaluates only validated optimization outputs.

Therefore,

every Mabûn-valid allocation is admissible for Rasterast verification.

Q.E.D.

---

# Future Work

Machine-checkable proofs

Lean

Coq

Isabelle/HOL

Agda



