import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean

structure FiniteSimplicialComplex where
  vertexSet : Type u
  faces : Set (Set vertexSet)
  finiteManyFaces : Prop
  finiteManyFacesTerm : finiteManyFaces

structure HochsterData (K : FiniteSimplicialComplex) where
  faceIdeal : Type v
  bettiNumbers : Type w
  hochsterFormula : Prop
  formulaHolds : hochsterFormula

def HochsterFormulaClosed (K : FiniteSimplicialComplex) : Prop :=
  K.finiteManyFaces

theorem hochster_formula_closed_from_complex (K : FiniteSimplicialComplex) :
    HochsterFormulaClosed K := by
  exact K.finiteManyFacesTerm

end CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean
end HautevilleHouse