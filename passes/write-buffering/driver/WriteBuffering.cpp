#include "Transformer.hpp"

namespace {
struct CAT : public ModulePass {
  static char ID;

  CAT() : ModulePass(ID) {}

  bool doInitialization(Module &M) override {
    /*
     * Debugging setting
     */
    Utils::ExitOnInit();

    return false;
  }

  bool runOnModule(Module &M) override {
    /*
     * Fetch Noelle
     */
    auto &noelle = getAnalysis<Noelle>();

    /*
     * Analyze each function
     */
    int TotalMoveCount = 0;
    for (auto &F : M) {
      /*
       * Check if the function should be handled or not
       */
      if (!Utils::IsViableFunction(F)) continue;

      /*
       * Analyze reads and writes in @F
       */
      auto A = Analyzer(F, noelle);
      A.Analyze();
      A.Dump();

      /*
       * Perform necessary write buffering based on the analysis
       */
      auto T = Transformer(F);
      int MoveCount = T.ClusterWritesWithinBasicBlocks(A);
      TotalMoveCount += MoveCount;
    }

    /*
     * Print test information
     */
    dbg() << "\nTotal moves: " << TotalMoveCount << "\n";

    /*
     * Return true if any modification was made
     */
    return (TotalMoveCount > 0);
  }

  void getAnalysisUsage(AnalysisUsage &AU) const override {
    AU.addRequired<Noelle>();
    return;
  }
};
}  // namespace

char CAT::ID = 0;
static RegisterPass<CAT> X("write-buffer", "Write Buffering Pass");

static CAT* _PassMaker = NULL;
static RegisterStandardPasses _RegPass1(PassManagerBuilder::EP_OptimizerLast,
    [](const PassManagerBuilder&, legacy::PassManagerBase& PM) {
        if (!_PassMaker) { PM.add(_PassMaker = new CAT()); }});
static RegisterStandardPasses _RegPass2(PassManagerBuilder::EP_EnabledOnOptLevel0,
    [](const PassManagerBuilder&, legacy::PassManagerBase& PM) {
        if (!_PassMaker) { PM.add(_PassMaker = new CAT()); }});
