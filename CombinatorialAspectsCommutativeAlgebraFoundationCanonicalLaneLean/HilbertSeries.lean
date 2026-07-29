import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean

structure HilbertSeriesPackage where
  gradedRing : Type u
  module : Type v
  hilbertSeries : Type w
  rationalFunction : Prop
  numeratorDenominator : Prop
  degreeBound : Prop

structure HilbertSeriesEvidence (H : HilbertSeriesPackage) where
  rationalFunctionClosed : H.rationalFunction
  numeratorDenominatorClosed : H.numeratorDenominator
  degreeBoundClosed : H.degreeBound

def HilbertSeriesClosed (H : HilbertSeriesPackage) : Prop :=
  H.rationalFunction ∧ H.numeratorDenominator ∧ H.degreeBound

theorem hilbert_series_closed_from_evidence (H : HilbertSeriesPackage) (E : HilbertSeriesEvidence H) :
    HilbertSeriesClosed H := by
  exact And.intro E.rationalFunctionClosed
    (And.intro E.numeratorDenominatorClosed E.degreeBoundClosed)

end CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean
end HautevilleHouse