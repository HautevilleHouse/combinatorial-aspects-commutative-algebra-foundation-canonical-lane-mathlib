import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean

structure ShellableComplex (V : Type u) [Fintype V] where
  complex : SimplicialComplex V
  shellingOrder : List (Finset V)
  shellingCondition : ∀ (i : ℕ), i < shellingOrder.length →
    let Fi := shellingOrder.get ⟨i, by exact i.2⟩; let F := Finset.image (λ j => shellingOrder.get ⟨j, by exact j.2⟩) (Finset.range i).val; 
    (∃ (G : Finset V), (G ⊂ Fi) ∧ (G.card = Fi.card - 1) ∧ (G ∉ F))
  isShellable : True

structure CohenMacaulayRing (V : Type u) [Fintype V] where
  complex : SimplicialComplex V
  srRing : StanleyReisnerRing V complex
  cohenMacaulay : Prop

structure ShellabilityEvidence (V : Type u) [Fintype V] (S : ShellableComplex V) (C : CohenMacaulayRing V) where
  shellableImpliesCM : S.isShellable → C.cohenMacaulay

def ShellabilityClosed (V : Type u) [Fintype V] (S : ShellableComplex V) (C : CohenMacaulayRing V) : Prop :=
  S.isShellable → C.cohenMacaulay

theorem shellability_closed_from_evidence (V : Type u) [Fintype V] (S : ShellableComplex V) (C : CohenMacaulayRing V) (E : ShellabilityEvidence V S C) : ShellabilityClosed V S C :=
  E.shellableImpliesCM

end CombinatorialAspectsCommutativeAlgebraFoundationCanonicalLaneLean
end HautevilleHouse