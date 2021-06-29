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
     * Collect LoopInfo per function (function pass)
     */
    IdempotentRegionAnalysis::LoopInfoMapTy LIM;
    auto loops = N.getLoops();
    for (auto loop : *loops) {
      auto LS = loop->getLoopStructure();
      auto F = LS->getFunction();
      LIM[F] = &getAnalysis<LoopInfoWrapperPass>(*F).getLoopInfo();
    }

    /*
     * Get the idempotent region cuts
     * i.e., the end of regions (checkpoint locations)
     */
    IdempotentRegionAnalysis IRA;
    IRA.run(N, M, LIM);

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

    /*
     * Declare LoopInfo dependence
     */
    AU.addRequired<LoopInfoWrapperPass>();

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
