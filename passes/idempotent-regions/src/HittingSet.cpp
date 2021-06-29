#include "Configurations.hpp"
#include "PlacementCost.hpp"
#include "HittingSet.hpp"

using namespace IdempotentRegion;

void HittingSet::computeHitCountMap(PathsTy &Paths) {
  HitCountMap.clear();

  for (const auto &Path : Paths)
    for (const auto &Point : Path)
      HitCountMap[Point]++;
}

void HittingSet::removeCutPaths(PathsTy &Paths, Instruction *Cut) {
  auto it = Paths.begin();
  while (it != Paths.end()) {
    auto &p = *it;
    if (std::find(p.begin(), p.end(), Cut) != p.end()) {
      // For each point in the Path that will be removed, we decrement the
      // corresponding HitCountMap entry
      for (const auto &Point : *it)
        HitCountMap[Point]--;

      // Erase the Path
      it = Paths.erase(it);
    } else {
      ++it;
    }
  }
}

#define hsdbg() if (!PrintDebug) {} else dbg()
CutsTy &HittingSet::run(bool PrintDebug) {
  hsdbg() << "Running HittingSet\n";

  int step = 0;
  PathsTy RemainingPaths = IdempotentPaths;

  computeHitCountMap(RemainingPaths);

  while (RemainingPaths.size() > 0) {

    hsdbg() << "\nStep: " << step << "\n";
    hsdbg() << "Remaining Paths: " << RemainingPaths.size() << "\n";

    // Calculate the priority Hits*Cost
    // Track the highest Priority
    Instruction *Candidate;
    double CandidatePriority = 0;
    for (const auto &kv : HitCountMap) {
      auto *I = kv.first;
      const auto &H = kv.second;

      double Priority = (double)H / (double)PC.cost(I);
      if (Priority > CandidatePriority) {
        Candidate = I;
        CandidatePriority = Priority;
      }
    }

    // Debug Information
    hsdbg() << "Candidate: " << *Candidate << "\n";
    hsdbg() << "  Priority: " <<  CandidatePriority << "\n";
    hsdbg() << "  Hits: " << HitCountMap[Candidate] << "\n";
    hsdbg() << "  Cost: " <<  PC.cost(Candidate) << "\n";
    hsdbg() << "  CostFactors: " <<  PC.costFactors(Candidate) << "\n";

    // Add the Candidate to the Cuts
    Cuts.insert(Candidate);

    // Remove the Paths containing the Candidate from the RemainingPaths
    // Additionally updates the HitCountMap
    removeCutPaths(RemainingPaths, Candidate);

    // Increase the step count (debugging)
    ++step;
  }

  // Verify if the Cuts cover all the
  assert((verify(Cuts) == true) && "Verify failed, not all paths are cut");

  /*
   * Debug information
   */
  hsdbg() << "\nMinimal Cuts:\n";
  for (const auto &Cut : Cuts) hsdbg() << *Cut << "\n";
  hsdbg() << "\n";

  /*
   * Automated testing output
   */
  hsdbg() << "$CUTS_COUNT: " << Cuts.size() << "\n";
  hsdbg() << "$CUTS_COST: " << PC.cost(Cuts) << "\n";

  return Cuts;
}

/*
 * Check if all the paths have a cut in them
 */
bool HittingSet::verify(CutsTy &Solution) {
  int CoveredPaths = 0;

  for (const auto &Path : IdempotentPaths) {
    for (const auto &P : Path) {
      if (Solution.find(P) != Solution.end()) {
        // Found a cut that breaks the Path
        CoveredPaths++;
        break;
      }
    }
  }

  return (CoveredPaths == IdempotentPaths.size());
}

