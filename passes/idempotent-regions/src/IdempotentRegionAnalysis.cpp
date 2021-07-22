#include "IdempotentRegion.hpp"
#include "Utils.hpp"
#include "WarAnalysis.hpp"
#include "ProtectingWriteAnalysis.hpp"

#include "HittingSet.hpp"
#include "HittingSetBruteForce.hpp"

#include "IdempotentRegionAnalysis.hpp"
#include "CheckpointCountInserter.hpp"

using namespace IdempotentRegion;

/*
 * - Collect Pairs
 * - Get Paths from Pars
 * - Compute Hitting set
 */
void IdempotentRegionAnalysis::run(Noelle &N, Module &M, LoopInfoMapTy &LIM) {

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
     * Skip excluded functions
     */
    if (ExcludeF.find(F->getName()) != ExcludeF.end()) continue;
    if (F->getName().contains("__checkpoint")) continue;

    dbg() << "********************************************************************************\n";
    dbg() << "* Analyzing Function: " << F->getName() << "\n";
    dbg() << "********************************************************************************\n";

    /*
     * Run the War analysis on the current Function
     */
    WarAnalysis WA(N, *F);
    auto Paths = WA.run();

    ProtectingWriteAnalysis PWA(N, *F, WA);
    auto ConditionalPaths = PWA.run();

    /*
     * Build the base placement cost per instruction
     */
    PlacementCost PC(N, *F, LIM[F]);


    /*
     * Get the optimized checkpoint locations
     */
    CutsTy *CheckpointLocations;

    HittingSet HS(Paths, PC);
    HittingSetBruteForce HSBF(Paths, PC);

    if (!BruteForceHittingSet) {
      CheckpointLocations = &HS.run();
    } else {
      /*
       * Run a Brute Force solver to get the best possible checkpoint locations
       */
      CheckpointLocations = &HSBF.run();
    }

    /*
     * Add a checkpoint before each forced cut (calls etc.)
     */
    for (auto &C : WA.getForcedCuts()) {
      // Skip CallSite
      if (CallSite(C)) {
        if (InsertCheckpointBeforeCall) {
          CheckpointLocations->insert(C);
          bool FuncNeedsCP = false;
          CallInst *Call = cast<CallInst>(C);

          for (auto &A : Call->args()) {
            if (A->getType()->isPointerTy()) {
              FuncNeedsCP = true;
            }
          }

          if (FuncNeedsCP) CheckpointLocations->insert(C);
        }

        //if (InsertCheckpointAfterCall) {
        //  CheckpointLocations->insert(C->getNextNode());
        //}
        continue;
      }

      dbg() << "Adding checkpoint before forced cut: " << *C << "\n";
      CheckpointLocations->insert(C);
    }

    /*
     * Store the Checkpoint Locations in the Function map
     */
    CheckpointLocationsMap[F] = std::move(*CheckpointLocations);
    //CheckpointLocationsMap[F] = *CheckpointLocations;
    }

  //dbg() << "********************************************************************************\n";
  //dbg() << "* Instrumentation\n";
  //dbg() << "********************************************************************************\n";

  ///*
  // * Perform instrumentation
  // */
  //if (InsertCheckpointCount) {
  //  auto CPCI = CheckpointCountInserter(M, CheckpointLocationsMap);
  //  CPCI.run();
  //}
}
