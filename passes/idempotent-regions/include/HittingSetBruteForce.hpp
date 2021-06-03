#pragma once

#include "HittingSet.hpp"
#include "IdempotentRegion.hpp"
#include "PlacementCost.hpp"

class HittingSetBruteForce : public HittingSet {
  using HittingSet::HittingSet;

 private:
  typedef struct {
    IdempotentRegion::CutsTy Cuts;
    PlacementCost::CostTy Cost;
  } SolutionTy;

  typedef std::list<SolutionTy> SolutionsTy;

  std::tuple<bool, bool> combinations(int N, int K,
                                      const vector<Instruction *> &AllCuts,
                                      SolutionTy &BestSolution);

 public:
  IdempotentRegion::CutsTy &run();
};
