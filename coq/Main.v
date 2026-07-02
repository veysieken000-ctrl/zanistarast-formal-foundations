Require Import Core.
Require Import Primitive.
Require Import StateSpace.
Require Import Operators.
Require Import Constraints.
Require Import Objectives.
Require Import Invariants.
Require Import Yek.
Require Import UnifiedSystem.
Require Import Theorems.
Require Import Proofs.

Module ZanistarastMain.

Import ZanistarastCore.
Import ZanistarastPrimitive.
Import ZanistarastStateSpace.
Import ZanistarastOperators.
Import ZanistarastConstraints.
Import ZanistarastObjectives.
Import ZanistarastInvariants.
Import ZanistarastYek.
Import ZanistarastUnifiedSystem.
Import ZanistarastTheorems.
Import ZanistarastProofs.

Check UnifiedCorrectness.
Check Soundness.
Check Feasibility.
Check Determinism.
Check Verification.
Check YekPreservation.

End ZanistarastMain.


