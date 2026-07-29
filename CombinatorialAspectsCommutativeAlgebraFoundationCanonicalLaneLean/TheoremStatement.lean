import HautevilleHouse.CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean

structure AdmittedObject where
  s : Type u
  proof : Prop
  conclusion : proof

def WitnessClosed (O : AdmittedObject) : Prop :=
  O.proof

end CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean
end HautevilleHouse