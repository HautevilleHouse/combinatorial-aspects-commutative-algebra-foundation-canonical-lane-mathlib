import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean

structure MonomialIdealPackage where
  ring : Type u
  monomialIdeal : Type v
  minimalGenerators : Prop
  primaryDecomposition : Prop
  irredundantGenerators : Prop

structure MonomialIdealEvidence (M : MonomialIdealPackage) where
  minimalGeneratorsClosed : M.minimalGenerators
  primaryDecompositionClosed : M.primaryDecomposition
  irredundantGeneratorsClosed : M.irredundantGenerators

def MonomialIdealClosed (M : MonomialIdealPackage) : Prop :=
  M.minimalGenerators ∧ M.primaryDecomposition ∧ M.irredundantGenerators

theorem monomial_ideal_closed_from_evidence (M : MonomialIdealPackage) (E : MonomialIdealEvidence M) :
    MonomialIdealClosed M := by
  exact And.intro E.minimalGeneratorsClosed
    (And.intro E.primaryDecompositionClosed E.irredundantGeneratorsClosed)

end CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean
end HautevilleHouse