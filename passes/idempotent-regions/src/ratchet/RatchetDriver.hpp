#pragma once

#include "Configurations.hpp"

#include "IdempotentRegion.hpp"
#include "Ratchet.hpp"
#include "llvm/Pass.h"

class Ratchet {
 private:
   llvm::MemoryIdempotenceAnalysisImpl MIAI;

   IdempotentRegion::CutsTy Cuts;

   llvm::ModulePass *P;

 public:
   // TODO: The flag places cuts at function calls
   Ratchet(ModulePass *P) : P(P), MIAI(true) {
   }

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
};
