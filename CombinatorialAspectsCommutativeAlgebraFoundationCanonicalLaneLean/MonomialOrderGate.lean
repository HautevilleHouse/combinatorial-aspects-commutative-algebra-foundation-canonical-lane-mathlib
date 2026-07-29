import canonicalLaneMathlib.AdmissibleClass

/-!
# Monomial Order Gate Package
-/

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraFoundation

structure MonomialOrder (R : Type) [CommSemiring R] where
  monomials : Type
  orderRelation : monomials → monomials → Prop
  totalOrder : Prop
  compatibleWithMultiplication : Prop
  welOrdered : Prop
  totalOrderClosed : totalOrder
  compatibleClosed : compatibleWithMultiplication
  welOrderedClosed : welOrdered

degf MonomialOrderClosed {R : Type} [CommSemiring R] (M : MonomialOrder R) : Prop :=
  M.totalOrder ∧ M.compatibleWithMultiplication ∧ M.welOrdered

theorem monomial_order_closed_from_evidence
    {R : Type} [CommSemiring R] (M : MonomialOrder R) :
    MonomialOrderClosed M := by
  exact And.intro M.totalOrderClosed
    (And.intro M.compatibleClosed M.welOrderedClosed)

gateClosedFromMonomialOrder {R : Type} [CommSemiring R] (M : MonomialOrder R) (A : AdmissibleClass) : Prop :=
  MonomialOrderClosed M ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

theorem gate_from_monomial_order {R : Type} [CommSemiring R] (M : MonomialOrder R) (A : AdmissibleClass) :
    gateClosedFromMonomialOrder M A := by
  exact And.intro (monomial_order_closed_from_evidence M) A.gateWitness

end CombinatorialAspectsCommutativeAlgebraFoundation
end HautevilleHouse
