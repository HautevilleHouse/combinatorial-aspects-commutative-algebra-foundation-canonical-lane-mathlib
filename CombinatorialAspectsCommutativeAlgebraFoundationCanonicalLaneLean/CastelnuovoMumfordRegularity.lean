import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean

structure RegularityPackage where
  gradedModule : Type u
  freeResolutionLength : ℕ
  regularityBound : Prop
  combinatorialInterpretation : Prop

structure RegularityEvidence (R : RegularityPackage) where
  regularityBoundClosed : R.regularityBound
  combinatorialInterpretationClosed : R.combinatorialInterpretation

def RegularityClosed (R : RegularityPackage) : Prop :=
  R.regularityBound ∧ R.combinatorialInterpretation

theorem regularity_closed_from_evidence
    (R : RegularityPackage) (E : RegularityEvidence R) :
    RegularityClosed R := by
  exact And.intro E.regularityBoundClosed E.combinatorialInterpretationClosed

end CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean
end HautevilleHouse