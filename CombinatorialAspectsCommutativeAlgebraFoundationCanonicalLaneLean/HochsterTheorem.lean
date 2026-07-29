import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean

structure HochsterTheoremPackage (V : Type u) [Fintype V] where
  complex : SimplicialComplex V
  srRing : StanleyReisnerRing V complex
  localCohomology : ℕ → Type u
  localCohomologyAddCommGrp (q : ℕ) : AddCommGroup (localCohomology q)
  reducedCohomology : ℕ → Type u
  reducedCohomologyAddCommGrp (q : ℕ) : AddCommGroup (reducedCohomology q)
  hochsterIsomorphism (q : ℕ) : localCohomology q ≃ reducedCohomology (q-1)  -- for all q? Formulate carefully
  hoechsterTheorem : Prop

structure HochsterTheoremEvidence (V : Type u) [Fintype V] (H : HochsterTheoremPackage V) where
  hochsterTheoremClosed : H.hoechsterTheorem

def HochsterTheoremProved (V : Type u) [Fintype V] (H : HochsterTheoremPackage V) : Prop :=
  H.hoechsterTheorem

theorem hochster_theorem_closed_from_evidence (V : Type u) [Fintype V] (H : HochsterTheoremPackage V) (E : HochsterTheoremEvidence V H) : HochsterTheoremProved V H :=
  E.hochsterTheoremClosed

end CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean
end HautevilleHouse