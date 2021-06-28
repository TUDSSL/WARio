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
void IdempotentRegionAnalysis::run(Noelle &N, Module &M) {

  dbg() << "Running IdempotentRegionAnalysis on: " << M.getName() << "\n";

  /*
   * Exclude functions (TODO: move to arguments)
   */
  set<string> ExcludeFunctions;
  ExcludeFunctions.insert("Reset_Handler");
  ExcludeFunctions.insert("HardFault_Handler");
  ExcludeFunctions.insert("NMI_Handler");
  ExcludeFunctions.insert("am_default_isr");

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
    if (ExcludeFunctions.find(F->getName()) != ExcludeFunctions.end()) continue;

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
     * This might be a bad way, better add them before the call?
     * That would be better as it happens before pushes to the stack
     */
#if 0
    /*
     * Add a checkpoint to the start of each function
     */
    auto FN = F->getName();
    CheckpointLocations.insert(F->getEntryBlock().getFirstNonPHI());
#else
    /*
     * Add a checkpoint before each forced cut (calls etc.)
     */
    for (auto &C : WA.getForcedCuts()) {
      dbg() << "Adding checkpoint before forced cut: " << *C << "\n";
      CheckpointLocations.insert(C);
    }
#endif

    /*
     * Store the Checkpoint Locations in the Function map
     */
    CheckpointLocationsMap[F] = std::move(CheckpointLocations);
  }

  dbg() << "********************************************************************************\n";
  dbg() << "* Instrumentation\n";
  dbg() << "********************************************************************************\n";

  /*
   * Perform instrumentation
   */
  if (InsertCheckpointCount) {
    auto CPCI = CheckpointCountInserter(M, CheckpointLocationsMap);
    CPCI.run();
  }
}
