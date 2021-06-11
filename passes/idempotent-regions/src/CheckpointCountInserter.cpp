#include "Configurations.hpp"
#include "Utils.hpp"
#include "CheckpointCountInserter.hpp"

/*
 * Insert a global variable "__checkpoint_count"
 * Increment the variable at each cut location (checkpoint location)
 */
void CheckpointCountInserter::run() {
  dbg() << "Running CheckpointCountInserter" << "\n";

  // Introduce global variable checkpoint count if it does not exist
  auto IntType = Type::getInt32Ty(M.getContext());
  auto GlobalCheckpointCountVar =
      Utils::GetOrInsertGlobalInteger(&M, IntType, "__checkpoint_count", 0);
  dbg() << "Global counter: " << *GlobalCheckpointCountVar << "\n";

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
      dbg() << "Placing checkpoint count increment before: " << *CP << "\n";

      // Get the Builder
      auto BB = CP->getParent();
      auto Builder = Utils::GetBuilder(F, BB);
      Builder.SetInsertPoint(CP);

      // 1. Load checkpoint_count
      auto CPLoad = Builder.CreateLoad(GlobalCheckpointCountVar);
      CPLoad->setAlignment(GlobalCheckpointCountVar->getAlignment());

      // 2. Add to checkpoint_count
      auto CPAdd = Builder.CreateAdd(
          CPLoad,
          ConstantInt::get(M.getContext(),
                           APInt(GlobalCheckpointCountVar->getValueType()
                                     ->getIntegerBitWidth(),
                                 1)));

      // 3. Store checpoint_count
      auto CPStore = Builder.CreateStore(CPAdd, GlobalCheckpointCountVar);
      CPStore->setAlignment(GlobalCheckpointCountVar->getAlignment());

      // 4. Add metadata to all the inserted instructions
      Utils::SetInstrumentationMetadata(cast<Instruction>(CPLoad), "idemp",
                                        "idemp_checkpoint_count");
      Utils::SetInstrumentationMetadata(cast<Instruction>(CPAdd), "idemp",
                                        "idemp_checkpoint_count");
      Utils::SetInstrumentationMetadata(cast<Instruction>(CPStore), "idemp",
                                        "idemp_checkpoint_count");
    }
  }
}
