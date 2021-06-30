#pragma once

#include "Configurations.hpp"

#include "IdempotentRegion.hpp"
#include "IdempotentRegionAnalysis.hpp"
#include "Ratchet.hpp"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"

class Ratchet {
 private:
  IdempotentRegionAnalysis::CheckpointLocationsMapTy CheckpointLocationsMap;
  set<string> ExcludeF;

 public:
  Ratchet(set<string> ExcludeFunctions = {}) {
    ExcludeF = ExcludeFunctions;
  }

  void run(ModulePass *P, Module &M, Noelle &N) {
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

      // Ratchet function pass NOTE: THE TRUE ADDS THE CALLS TO THE CUTSET
      llvm::MemoryIdempotenceAnalysisImpl MIAI(true);

      auto &AA = P->getAnalysis<AAResultsWrapperPass>(*F);
      auto &DT = P->getAnalysis<DominatorTreeWrapperPass>(*F);
      auto &LI = P->getAnalysis<LoopInfoWrapperPass>(*F).getLoopInfo();

      dbg() << "Running Ratchet on function: " << F->getName() << "\n";
      auto CutSet = MIAI.run(M, *F, AA.getAAResults(), DT.getDomTree(), LI);

      // Convert the Cuts
      for (auto C : CutSet) {
        CheckpointLocationsMap[F].insert(C);
        dbg() << "Ratchet cut at: " << *C << "\n";
      }
    }
  }

  IdempotentRegionAnalysis::CheckpointLocationsMapTy &
  getCheckpointLocationsMap() {
    return CheckpointLocationsMap;
  }

#if 0
   IdempotentRegion::CutsTy & run(Module &M, Function &F, AAResults &AA, DominatorTree &DT,
           LoopInfo &LI) {

    /*
     * Run the Ratchet function pass
     */
    auto CutSet = MIAI.run(M, F, AA, DT, LI);

    /*
     * Extract the result in a way that we can use it
     */
    for (auto C : CutSet) {
      Cuts.insert(C);
      dbg() << "Ratchet cut at: " << *C << "\n";
    }

    return Cuts;
  }
#endif
};
