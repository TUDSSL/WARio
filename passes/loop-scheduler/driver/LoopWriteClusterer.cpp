#include "LoopWriteScheduler.hpp"
#include "LoopUnroller.hpp"
#include "PassUtils.hpp"
#include "llvm/IR/Function.h"

namespace {
struct LoopWriteClusterer : public ModulePass {
  static char ID;

  LoopWriteClusterer() : ModulePass(ID) {}

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
     * Only one step can be active at a time
     */
    assert(((LoopUnrollStep && LoopScheduleStep) == false) &&
           "Either execute the ics-loop-unroll or the ics-loop-schedule "
           "step! Not both.");
    assert((LoopUnrollStep || LoopScheduleStep) &&
           "Either execute the ics-loop-unroll or the ics-loop-schedule "
           "step.");

    if (LoopUnrollStep == true) {
      /*
       * Collect loop unroll candidates
       */
      auto LoopUnrollCandidates = LoopUnroller::CollectUnrollCandidates(N, M);

      /*
       * Unroll the candidates
       */
      dbg() << "\n"
             << "Unrolling " << LoopUnrollCandidates.size() << " loops\n";

      /*
       * Print testing output for unit tests
       */

      if (AutomatedTestingPrint) {
        // Total number of loops
        int LoopCount = 0;
        for (auto L : *N.getLoops()) ++LoopCount;
        errs() << "$LOOP_COUNT: " << LoopCount << "\n";

        // Candidate loops
        errs() << "$LOOP_CANDIDATE_COUNT: " << LoopUnrollCandidates.size()
               << "\n";

        // Stats for each candidate loop
        for (auto &LUC : LoopUnrollCandidates) {
          errs() << "$LOOP_CANDIDATE_WAR_COUNT: " << LUC.WarCount << "\n";
          errs() << "$LOOP_CANDIDATE_LOOP_CARRIED_WAR_COUNT: "
                 << LUC.LoopCarriedWarCount << "\n";
        }
      }

      /*
       * Unroll the candidates
       */
      for (auto C : LoopUnrollCandidates) {
        auto *LS = C.LoopDependenceInfo->getLoopStructure();
        auto *F = LS->getFunction();
        auto &LI = getAnalysis<LoopInfoWrapperPass>(*F).getLoopInfo();

        // Unroll
        modified =
            LoopUnroller::UnrollLoop(*LS, LI, LoopUnrollCount) || modified;
      }

    } else if (LoopScheduleStep == true) {
      /*
       * Schedule writes in loops together
       */
      modified = LoopWriteScheduler::schedule(N, M);
    }

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
    AU.addRequired<LoopInfoWrapperPass>();
    return;
  }
};

char LoopWriteClusterer::ID = 0;
static RegisterPass<LoopWriteClusterer> X("loop-write-clusterer",
                           "Intermittent computing scheduling");

static LoopWriteClusterer *_PassMaker = NULL;
static RegisterStandardPasses _RegPass1(
    PassManagerBuilder::EP_OptimizerLast,
    [](const PassManagerBuilder &,
       legacy::PassManagerBase &PM) {
      if (!_PassMaker) {
        PM.add(_PassMaker = new LoopWriteClusterer());
      }
    });  // ** for -Ox
static RegisterStandardPasses _RegPass2(
    PassManagerBuilder::EP_EnabledOnOptLevel0,
    [](const PassManagerBuilder &, legacy::PassManagerBase &PM) {
      if (!_PassMaker) {
        PM.add(_PassMaker = new LoopWriteClusterer());
      }
    });  // ** for -O0
}  // namespace
