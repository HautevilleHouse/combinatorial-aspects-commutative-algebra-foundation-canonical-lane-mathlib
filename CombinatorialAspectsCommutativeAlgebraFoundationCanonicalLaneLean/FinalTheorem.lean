import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean

def ConstrainedCombinatorialCommutativeAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_combinatorial_commutative_algebra_endgame (A : AdmissibleClass) : ConstrainedCombinatorialCommutativeAlgebraClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean
end HautevilleHouse