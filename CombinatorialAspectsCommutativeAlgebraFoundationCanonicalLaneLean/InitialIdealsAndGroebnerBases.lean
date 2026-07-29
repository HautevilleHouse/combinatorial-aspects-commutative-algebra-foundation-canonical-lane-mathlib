import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean

structure GroebnerBasisPackage where
  polynomialRing : Type u
  ideal : Prop
  monomialOrder : Type v
  groebnerBasis : Prop
  reductionClosed : Prop

structure GroebnerBasisEvidence (G : GroebnerBasisPackage) where
  groebnerBasisClosed : G.groebnerBasis
  reductionClosedClosed : G.reductionClosed

def GroebnerBasisClosed (G : GroebnerBasisPackage) : Prop :=
  G.groebnerBasis ∧ G.reductionClosed

theorem groebner_basis_closed_from_evidence
    (G : GroebnerBasisPackage) (E : GroebnerBasisEvidence G) :
    GroebnerBasisClosed G := by
  exact And.intro E.groebnerBasisClosed E.reductionClosedClosed

end CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean
end HautevilleHouse