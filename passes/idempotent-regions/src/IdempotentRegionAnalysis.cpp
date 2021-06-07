#include "IdempotentRegion.hpp"
#include "WarAnalysis.hpp"
#include "ProtectingWriteAnalysis.hpp"

#include "HittingSet.hpp"
#include "HittingSetBruteForce.hpp"

#include "IdempotentRegionAnalysis.hpp"

using namespace IdempotentRegion;

/*
 * - Collect Pairs
 * - Get Paths from Pars
 * - Compute Hitting set
 */
void IdempotentRegionAnalysis::run(Noelle &N, Module &M) {

  dbg() << "Running IdempotentRegionAnalysis on: " << M.getName() << "\n";

  /*
   * Fetch the entry point.
   */
  auto FM = N.getFunctionsManager();
  auto PCF = FM->getProgramCallGraph();

  /*
   * Fun the analysis per function
   */
  for (auto Node : PCF->getFunctionNodes()) {
    Function *F = Node->getFunction();
    assert(F != nullptr && "F == nullptr");
    if (F->getInstructionCount() == 0) continue;

    /*
     * Run the War analysis on the current Function
     */
    WarAnalysis WA(N, *F);
    auto Paths = WA.run();

    ProtectingWriteAnalysis PWA(N, *F, WA);
    auto ConditionalPaths = PWA.run();

    /*
     * Get the optimized checkpoint locations
     */
    HittingSet HS(Paths);
    auto CheckpointLocations = HS.run();

    /*
     * Run a Brute Force solver to get the best possible checkpoint locations
     */
    //HittingSetBruteForce HSBF(Paths);
    //auto CheckpointLocationsBF = HSBF.run();

    /*
     * Store the Checkpoint Locations in the Function map
     */
    CheckpointLocationsMap[F] = std::move(CheckpointLocations);
  }
}
