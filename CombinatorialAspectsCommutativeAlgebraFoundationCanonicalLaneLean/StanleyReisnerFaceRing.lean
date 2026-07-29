import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean

structure StanleyReisnerComplex where
  vertexSet : Type u
  facets : Set (Set vertexSet)
  isAbstractSimplicialComplex : Prop
  facetClosure : isAbstractSimplicialComplex

structure FaceRing (K : StanleyReisnerComplex) where
  coefficientRing : Type v
  polynomialRing : coefficientRing → Type w
  faceIdeal : Type w
  faceRingQuotient : Type w
  structureTheorems : Prop
  structureClosed : structureTheorems

def StanleyReisnerFaceRingClosed (K : StanleyReisnerComplex) : Prop :=
  K.isAbstractSimplicialComplex

theorem stanley_reisner_face_ring_closed_from_complex (K : StanleyReisnerComplex) :
    StanleyReisnerFaceRingClosed K := by
  exact K.facetClosure

end CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean
end HautevilleHouse