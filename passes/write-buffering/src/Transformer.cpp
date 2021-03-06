#include "Transformer.hpp"
#include "PassUtils.hpp"

/*
 * ---------- Constructors ----------
 */
Transformer::Transformer(Function &F) : F{F} {};

/*
 * ---------- Drivers ----------
 */
int Transformer::ClusterWritesWithinBasicBlocks(Analyzer &A) {
  /*
   * TOP --- Cluster all writes that are profitable-to-move
   * to the terminator of their respective parent basic blocks
   *
   * Use @A to determine which instructions to move
   */

  /*
   * Setup --- Have to organize instructions to move in a topological
   * manner (with respect to instruction order) so that moves are
   * not arbitrarily forced --- mark these instructions
   */
  std::unordered_map<BasicBlock *,              /* BB */
                     std::vector<Instruction *> /* Instructions to move in
                                                   toplogical order within BB */
                     >
      AllInstructionsToMove;

  for (auto &B : F)
    for (auto &I : B)
      if (StoreInst *Store = dyn_cast<StoreInst>(&I))
        if (A.IsWriteProfitableToMoveInBasicBlock(Store))
          AllInstructionsToMove[&B].push_back(Store);

  /*
   * Perform clustering for each marked instructions, set metadata following
   * move
   */
  int MoveCount = 0;
  for (auto &[Block, InstructionsToMove] : AllInstructionsToMove) {
    /*
     * Move
     */
    _moveInstructionsToTerminatorOfParentBasicBlock(InstructionsToMove);
    ++MoveCount;

    /*
     * Metadata
     */
    for (auto I : InstructionsToMove)
      Utils::SetInstrumentationMetadata(I, "write.buffering.transformation",
                                        "intra.clustered.write");
  }

  return MoveCount;
}

/*
 * ---------- Private Transformation Methods ----------
 */

void Transformer::_moveInstructionsToTerminatorOfParentBasicBlock(
    std::vector<Instruction *> &InstructionsToMove) {
  /*
   * TOP
   *
   * Move all instructions in @InstructionsToMove to the
   * terminators of their respective parent basic blocks
   *
   * These are unconditional transformations
   */
  for (auto I : InstructionsToMove)
    _moveInstructionToTerminatorOfParentBasicBlock(I);

  return;
}

void Transformer::_moveInstructionToTerminatorOfParentBasicBlock(
    Instruction *I) {
  /*
   * TOP
   *
   * Move @I to the terminator of its respective parent basic block.
   *
   * This an unconditional transformation
   */

  /*
   * Setup
   */
  BasicBlock *Parent = I->getParent();
  Instruction *Terminator = Parent->getTerminator();

  /*
   * Perform move unconditionally
   */
  I->moveBefore(Terminator);

  return;
}
