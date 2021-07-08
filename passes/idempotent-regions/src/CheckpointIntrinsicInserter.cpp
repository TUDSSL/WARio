#include "Configurations.hpp"
#include "Utils.hpp"
#include "CheckpointIntrinsicInserter.hpp"
#include "llvm/IR/Intrinsics.h"

/*
 * Insert the 'idemp' intrinsic call at checkpoint locations
 */
void CheckpointIntrinsicInserter::run() {
  dbg() << "Running CheckpointIntrinsicInserter" << "\n";

  /*
   * Get the intrinsic function for idempotent regions
   */
  Function *IdempIntrinsic = Intrinsic::getDeclaration(&M, Intrinsic::idemp);


  /*
   * Iterate trough the Checkpoint Cuts for each Function
   */
  for (auto &kv : CPLMap) {
    auto *F = kv.first;
    auto CPS = kv.second;
    dbg() << "Instrumenting Function: " << F->getName() << "\n";

    /*
     * Iterate trough all the cuts in Function F
     */
    for (auto CP : CPS) {
      dbg() << "Placing idemp intrinsic before: " << *CP << "\n";

      // Get the Builder
      auto BB = CP->getParent();
      auto Builder = Utils::GetBuilder(F, BB);
      Builder.SetInsertPoint(CP);

      // Place the intrinsic
      Builder.CreateCall(IdempIntrinsic);
    }
  }
}
