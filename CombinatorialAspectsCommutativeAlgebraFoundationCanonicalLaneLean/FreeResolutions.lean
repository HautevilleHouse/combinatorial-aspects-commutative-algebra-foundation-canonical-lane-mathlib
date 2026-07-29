import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean

structure FreeResolutionPackage where
  module : Type u
  freeResolution : Type v
  lengthFinite : Prop
  bettiNumbers : Prop
  minimalResolution : Prop

structure FreeResolutionEvidence (F : FreeResolutionPackage) where
  lengthFiniteClosed : F.lengthFinite
  bettiNumbersClosed : F.bettiNumbers
  minimalResolutionClosed : F.minimalResolution

def FreeResolutionClosed (F : FreeResolutionPackage) : Prop :=
  F.lengthFinite ∧ F.bettiNumbers ∧ F.minimalResolution

theorem free_resolution_closed_from_evidence (F : FreeResolutionPackage) (E : FreeResolutionEvidence F) :
    FreeResolutionClosed F := by
  exact And.intro E.lengthFiniteClosed
    (And.intro E.bettiNumbersClosed E.minimalResolutionClosed)

end CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean
end HautevilleHouse