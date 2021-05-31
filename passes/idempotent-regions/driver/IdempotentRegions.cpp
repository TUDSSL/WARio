#include "Utils.hpp"
#include "llvm/IR/Function.h"

#include "IdempotentRegionAnalysis.hpp"

namespace {
struct CAT : public ModulePass {
  static char ID;

  CAT() : ModulePass(ID) {}

  bool doInitialization(Module &M) override {
    /*
     * Debugging
     */
    Utils::ExitOnInit();

    return false;
  }

  bool runOnModule(Module &M) override {
    bool modified = false;

    /*
     * Debugging
     */
    Utils::ExitOnInit();

    /*
     * Fetch NOELLE
     */
    auto &N = getAnalysis<Noelle>();

    /*
     * Get the idempotent region cuts
     * i.e., the end of regions (checkpoint locations)
     */
    IdempotentRegionAnalysis IRA;
    IRA.run(N, M);

    /*
     * Run verifier on each function instrumented
     */
    Utils::Verify(M);

    return modified;
  }

  void getAnalysisUsage(AnalysisUsage &AU) const override {
    /*
     * Declare NOELLE dependence
     */
    AU.addRequired<Noelle>();
    return;
  }
};

char CAT::ID = 0;
static RegisterPass<CAT> X("idemp", "Intermittent computing scheduling");

static CAT *_PassMaker = NULL;
static RegisterStandardPasses _RegPass1(
    PassManagerBuilder::EP_OptimizerLast,
    [](const PassManagerBuilder &,
       legacy::PassManagerBase &PM) {
      if (!_PassMaker) {
        PM.add(_PassMaker = new CAT());
      }
    });  // ** for -Ox
static RegisterStandardPasses _RegPass2(
    PassManagerBuilder::EP_EnabledOnOptLevel0,
    [](const PassManagerBuilder &, legacy::PassManagerBase &PM) {
      if (!_PassMaker) {
        PM.add(_PassMaker = new CAT());
      }
    });  // ** for -O0
}  // namespace
