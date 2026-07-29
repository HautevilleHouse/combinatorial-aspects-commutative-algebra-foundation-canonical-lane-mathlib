import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean

structure AlexanderDualityPackage where
  simplicialComplex : Type u
  dualComplex : Type v
  cohomologyIsomorphism : Prop
  stanleyReisnerDuality : Prop
  homotopyType : Prop

structure AlexanderDualityEvidence (A : AlexanderDualityPackage) where
  cohomologyIsomorphismClosed : A.cohomologyIsomorphism
  stanleyReisnerDualityClosed : A.stanleyReisnerDuality
  homotopyTypeClosed : A.homotopyType

def AlexanderDualityClosed (A : AlexanderDualityPackage) : Prop :=
  A.cohomologyIsomorphism ∧ A.stanleyReisnerDuality ∧ A.homotopyType

theorem alexander_duality_closed_from_evidence (A : AlexanderDualityPackage) (E : AlexanderDualityEvidence A) :
    AlexanderDualityClosed A := by
  exact And.intro E.cohomologyIsomorphismClosed
    (And.intro E.stanleyReisnerDualityClosed E.homotopyTypeClosed)

end CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean
end HautevilleHouse