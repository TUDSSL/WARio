#include "Utils.hpp"
#include "llvm/IR/Function.h"

#include "RatchetDriver.hpp"
#include "IdempotentRegionAnalysis.hpp"
#include "CheckpointCountInserter.hpp"

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

  IdempotentRegionAnalysis::CheckpointLocationsMapTy runRatchet(Module &M, Noelle &N) {

    IdempotentRegionAnalysis::CheckpointLocationsMapTy RatchetCheckpointLocationsMap;

    auto FM = N.getFunctionsManager();
    auto PCF = FM->getProgramCallGraph();
    for (auto Node : PCF->getFunctionNodes()) {
      Function *F = Node->getFunction();
      assert(F != nullptr && "F == nullptr");
      if (F->getInstructionCount() == 0) continue;

      auto &AA = getAnalysis<AAResultsWrapperPass>(*F);
      auto &DT = getAnalysis<DominatorTreeWrapperPass>(*F);
      auto &LI = getAnalysis<LoopInfoWrapperPass>(*F).getLoopInfo();

      Ratchet R(this);
      dbg() << "Running Ratchet on function: " << F->getName() << "\n";
      auto Cuts = R.run(M, *F, AA.getAAResults(), DT.getDomTree(), LI);

      /*
       * Insert the cuts in the locations map
       */
      RatchetCheckpointLocationsMap[F] = std::move(Cuts);
    }

    return RatchetCheckpointLocationsMap;
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
    IdempotentRegionAnalysis::CheckpointLocationsMapTy CPL;
    IdempotentRegionAnalysis IRA;

    if (UseRatchetImplementation) {
      /*
       * Run the Ratchet analysis (unchanged)
       */
      CPL = runRatchet(M, N);
    } else {
      /*
       * Run the improved idempotent region analysis
       */
      IRA.run(N, M, LIM);
      CPL = IRA.getCheckpointLocationsMap();
    }

    /*
     * Instrumentation
     */
    dbg() << "********************************************************************************\n";
    dbg() << "* Instrumentation\n";
    dbg() << "********************************************************************************\n";

    /*
     * Insert debug checkpoints
     */
    if (InsertCheckpointCount) {
      auto CPCI = CheckpointCountInserter(M, CPL);
      CPCI.run();
    }

    dbg() << "********************************************************************************\n";
    dbg() << "* Verify\n";
    dbg() << "********************************************************************************\n";

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

    /*
     * Declare AA dependence (Ratchet)
     */
    AU.addRequired<AAResultsWrapperPass>();
    AU.addRequired<DominatorTreeWrapperPass>();

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
