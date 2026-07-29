import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean

structure StanleyReisnerPackage where
  faceComplex : Type u
  vertexSet : Type v
  stanleyReisnerRing : Type w
  faceRingIsomorphism : Prop
  faceComplexSimplicial : Prop
  vertexSetFinite : Prop

structure StanleyReisnerEvidence (S : StanleyReisnerPackage) where
  faceRingIsomorphismClosed : S.faceRingIsomorphism
  faceComplexSimplicialClosed : S.faceComplexSimplicial
  vertexSetFiniteClosed : S.vertexSetFinite

def StanleyReisnerClosed (S : StanleyReisnerPackage) : Prop :=
  S.faceRingIsomorphism ∧ S.faceComplexSimplicial ∧ S.vertexSetFinite

theorem stanley_reisner_closed_from_evidence (S : StanleyReisnerPackage) (E : StanleyReisnerEvidence S) :
    StanleyReisnerClosed S := by
  exact And.intro E.faceRingIsomorphismClosed
    (And.intro E.faceComplexSimplicialClosed E.vertexSetFiniteClosed)

end CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean
end HautevilleHouse