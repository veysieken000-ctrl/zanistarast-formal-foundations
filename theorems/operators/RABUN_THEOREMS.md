# Rabûn Operator Theorems

Version 1.0

---

# Purpose

This document establishes the principal theorems of the Rabûn Operator.

The theorems formalize distributed coordination, policy generation and
control guarantees within the Zanistarast framework.

---

## Theorem R-T1 — Policy Admissibility

If

ℛb(Ψ) ≥ τr

then the generated policy is admissible.

---

## Theorem R-T2 — Coordination Preservation

Every accepted coordination preserves the required communication
structure of the system.

---

## Theorem R-T3 — Consensus Stability

If the system reaches consensus before coordination,

then Rabûn preserves consensus under admissible operations.

---

## Theorem R-T4 — Stability Preservation

Under the adopted control assumptions,

Rabûn preserves closed-loop system stability.

---

## Theorem R-T5 — Dependency Theorem

No Rabûn evaluation is valid unless Hebûn, Zanabûn and Mabûn have all
accepted the input state.

---

## Theorem R-T6 — Closure

If

Ψ ∈ ΩM

then

ℛb(Ψ) ∈ ΩM

---

## Theorem R-T7 — Rasterast Eligibility

Every Rabûn-valid coordinated state is admissible for Rasterast
verification.

---

# Corollaries

## Corollary R-C1

Rasterast always operates on coordinated states.

---

## Corollary R-C2

Removing Rabûn breaks the canonical coordination layer of the
Zanistarast pipeline.

---

# Dependencies

- mathematics/operators/04_RABUN_OPERATOR.md
- invariants/operators/RABUN_INVARIANTS.md
- propositions/operators/RABUN_PROPOSITIONS.md
- lemmas/operators/RABUN_LEMMAS.md


