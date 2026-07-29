import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean

structure AbstractSimplicialComplexShellable where
  vertexSet : Type u
  facets : Set (Set vertexSet)
  shellingOrder : List (Set vertexSet)
  pureProperty : Prop
  shellingCondition : Prop
  shellingClosed : shellingCondition

structure ShellableComplex (K : AbstractSimplicialComplexShellable) where
  pure : K.pureProperty
  shelling : K.shellingCondition
  shellingTerm : shelling

def ShellabilityClosed (K : AbstractSimplicialComplexShellable) : Prop :=
  K.pureProperty ∧ K.shellingCondition

theorem shellability_closed_from_complex (K : AbstractSimplicialComplexShellable)
    (P : ShellableComplex K) : ShellabilityClosed K := by
  exact And.intro P.pure P.shellingTerm

end CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean
end HautevilleHouse