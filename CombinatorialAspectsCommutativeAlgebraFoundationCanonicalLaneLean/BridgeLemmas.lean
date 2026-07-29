import HautevilleHouse.CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean
end HautevilleHouse