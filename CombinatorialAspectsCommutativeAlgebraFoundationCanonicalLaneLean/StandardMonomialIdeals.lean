import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean

structure StandardMonomialIdealPackage where
  polynomialRing : Type u
  monomialSet : Set (List Nat)
  idealGenerated : Prop
  standardGradedStructure : Prop

structure StandardMonomialIdealEvidence (M : StandardMonomialIdealPackage) where
  monomialSetClosed : M.monomialSet ≠ ∅
  idealGeneratedClosed : M.idealGenerated
  standardGradedStructureClosed : M.standardGradedStructure

def StandardMonomialIdealClosed (M : StandardMonomialIdealPackage) : Prop :=
  M.monomialSet ≠ ∅ ∧ M.idealGenerated ∧ M.standardGradedStructure

theorem standard_monomial_ideal_closed_from_evidence
    (M : StandardMonomialIdealPackage) (E : StandardMonomialIdealEvidence M) :
    StandardMonomialIdealClosed M := by
  exact And.intro E.monomialSetClosed (And.intro E.idealGeneratedClosed E.standardGradedStructureClosed)

end CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean
end HautevilleHouse