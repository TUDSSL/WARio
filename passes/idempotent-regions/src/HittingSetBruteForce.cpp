#include "Configurations.hpp"
#include "PlacementCost.hpp"
#include "HittingSetBruteForce.hpp"
#include <algorithm>
#include <tuple>

using namespace IdempotentRegion;

// http://rosettacode.org/wiki/Combinations#C.2B.2B
tuple<bool, bool> HittingSetBruteForce::combinations(int N, int K, const vector<Instruction *> &AllCuts, SolutionTy &BestSolution) {
  string bitmask(K, 1);
  bitmask.resize(N, 0);

  bool BetterSolutionFound = false;
  bool SolutionFound = false;

  do {
    CutsTy PossibleSolution;
    for (int i=0; i<N; ++i) {
      if (bitmask[i]) {
        PossibleSolution.insert(AllCuts[i]);
        //dbg() << " " << i;
      }
    }
    //dbg() << "\n";
    if (verify(PossibleSolution)) {
      SolutionFound = true;
      auto SolutionCost = PC.cost(PossibleSolution);
      if (SolutionCost < BestSolution.Cost) {
        BetterSolutionFound = true;
        BestSolution.Cuts = PossibleSolution;
        BestSolution.Cost = SolutionCost;
      }
    }
  } while (std::prev_permutation(bitmask.begin(), bitmask.end()));

  return make_tuple(SolutionFound, BetterSolutionFound);
}

CutsTy &HittingSetBruteForce::run() {
  errs() << "Running Bruteforce HittingSet\n";

  SolutionsTy PS;

  // Create the "universe"
  set<Instruction *> AllCutsSet;
  for (auto &Path : IdempotentPaths) {
    for (auto &Point : Path) AllCutsSet.insert(Point);
  }

  if (AllCutsSet.size() == 0) return Cuts;

  // Convert the set to a vector so it can be indexed
  vector<Instruction *> AllCuts(AllCutsSet.size());
  copy(AllCutsSet.begin(), AllCutsSet.end(), AllCuts.begin());

  // Find a solution using the HittingSet algorithm
  HittingSet HS(IdempotentPaths, PC);
  auto CPS = HS.run(false);
  auto CPSCost = PC.cost(CPS);

  SolutionTy BestSolution {.Cuts = CPS, CPSCost};
  int SolutionSize = CPS.size();
  bool SolutionsFound;

  dbg() << "Starting HittingSetBruteForce with solution size: " << SolutionSize
        << " and universe size: " << AllCuts.size() << "\n";

  // Try to find a "better" solution
  do {
    tie(SolutionsFound, std::ignore) =
        combinations(AllCuts.size(), SolutionSize, AllCuts, BestSolution);

    if (!SolutionsFound)
      dbg() << "No solutions found for size: " << SolutionSize << "\n";

    --SolutionSize;
  } while (SolutionsFound);

  // Assign the best solution to the internal Cuts class variable
  Cuts = BestSolution.Cuts;

  // Verify if the Cuts cover all the
  assert((verify(Cuts) == true) && "Verify failed, not all paths are cut");

  // Debug information
  if (BestSolution.Cost < CPSCost) {
    dbg() << "HittingSetBruteForce found a better solution\n";
    dbg() << "  Cost HittingSet:           " << CPSCost << "\n";
    dbg() << "  Cost HittingSetBruteForce: " << BestSolution.Cost << "\n";
  }

  return Cuts;
}

