#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include <algorithm>

#include "Expander.hpp"

using namespace llvm::noelle ;

namespace timesqueezer {

static cl::opt<int> MaximumFunctionSize("bs-max-function", cl::ZeroOrMore, cl::Hidden, cl::desc("Maximum number of instructions for each function"));
static cl::opt<int> MaximumLoopSize("bs-max-loop", cl::ZeroOrMore, cl::Hidden, cl::desc("Maximum number of instructions for each loop"));
static cl::opt<int> MaximumLoopUnrollFactor("bs-max-loop-unroll", cl::ZeroOrMore, cl::Hidden, cl::desc("Maximum loop unroll factor"));

bool Expander::doInitialization (Module &M) {

  /*
   * Check the options.
   */
  auto maxFunc = MaximumFunctionSize.getValue();
  if (maxFunc != 0){
    this->maxFunctionSize = maxFunc;
  }
  auto maxLoop = MaximumLoopSize.getValue();
  if (maxLoop != 0){
    this->maxLoopSize = maxLoop;
  }
  auto maxLoopUnroll = MaximumLoopUnrollFactor.getValue();
  if (maxLoopUnroll != 0){
    this->maxUnrollFactor = maxLoopUnroll;
  }

  return false;
}

bool Expander::runOnModule (Module &M) {

  /*
   * Fetch NOELLE
   */
  auto& noelle = getAnalysis<Noelle>();
  errs() << prefixString << "The program has " << noelle.numberOfProgramInstructions() << " instructions\n";

  /*
   * Expand
   */
  auto modified = this->expand(noelle, M);

  return modified;
}

void Expander::getAnalysisUsage(AnalysisUsage &AU) const {
  AU.addRequired<LoopInfoWrapperPass>();
  AU.addRequired<DominatorTreeWrapperPass>();
  AU.addRequired<ScalarEvolutionWrapperPass>();
  AU.addRequired<AssumptionCacheTracker>();
  AU.addRequired<Noelle>();
}

// Next there is code to register your pass to "opt"
char Expander::ID = 0;
static RegisterPass<Expander> X("expander", "Expand the code for the bitwidth speculation compiler");

// Next there is code to register your pass to "clang"
static Expander * _PassMaker = NULL;
static RegisterStandardPasses _RegPass1(PassManagerBuilder::EP_OptimizerLast,
    [](const PassManagerBuilder&, legacy::PassManagerBase& PM) {
        if(!_PassMaker){ PM.add(_PassMaker = new Expander());}}); // ** for -Ox
static RegisterStandardPasses _RegPass2(PassManagerBuilder::EP_EnabledOnOptLevel0,
    [](const PassManagerBuilder&, legacy::PassManagerBase& PM) {
        if(!_PassMaker){ PM.add(_PassMaker = new Expander()); }}); // ** for -O0

}
