#pragma once

#include "Noelle.hpp"

namespace timesqueezer {

class Expander : public ModulePass {
 public:
  static char ID;

  Expander();

  bool doInitialization(Module &M) override;

  bool runOnModule(Module &M) override;

  void getAnalysisUsage(AnalysisUsage &AU) const override;

 private:
  std::string prefixString;
  std::uint64_t maxLoopSize;
  std::uint64_t maxFunctionSize;
  std::uint64_t maxUnrollFactor;

  CallInst *isItEligableToBeInlined(Instruction *inst);

  bool expand(Noelle &noelle, Module &M);

  bool expandByInlining(Noelle &noelle, Hot *hot, LoopStructure *ls);
};

}  // namespace timesqueezer
