import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean

structure FrobeniusEndomorphismPackage (R : Type u) [CommRing R] [CharP R p] where
  frobenius : R → R
  frobeniusDef : ∀ (x : R), frobenius x = x ^ p
  frobeniusLinear : IsRingHom frobenius

structure FrobeniusClosedCondition (R : Type u) [CommRing R] [CharP R p] (F : FrobeniusEndomorphismPackage R) : Prop where
  frobeniusEndomorphismComputed : F.frobeniusDef
  frobeniusLinearComputed : F.frobeniusLinear

def FrobeniusClosed (R : Type u) [CommRing R] [CharP R p] (F : FrobeniusEndomorphismPackage R) : Prop :=
  F.frobeniusDef ∧ F.frobeniusLinear

theorem frobenius_closed_from_evidence (R : Type u) [CommRing R] [CharP R p] (F : FrobeniusEndomorphismPackage R) (E : FrobeniusClosedCondition R F) : FrobeniusClosed R F :=
  And.intro E.frobeniusEndomorphismComputed E.frobeniusLinearComputed

end CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean
end HautevilleHouse