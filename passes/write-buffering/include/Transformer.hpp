#include "Analyzer.hpp"

class Transformer {
 public:
  /*
   * Constructors
   */
  Transformer(Function &F);

  /*
   * Drivers
   */
  int ClusterWritesWithinBasicBlocks(Analyzer &A);

 private:
  /*
   * Fields
   */
  Function &F;

  /*
   * Private transformation methods
   */
  void _moveInstructionsToTerminatorOfParentBasicBlock(
      std::vector<Instruction *> &InstructionsToMove);

  void _moveInstructionToTerminatorOfParentBasicBlock(Instruction *I);
};
