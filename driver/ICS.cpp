#include "LoopWriteScheduler.hpp"
#include "LoopUnroller.hpp"
#include "Utils.hpp"
#include "llvm/IR/Function.h"

namespace
{
struct CAT : public ModulePass
{
    static char ID;

    CAT() : ModulePass(ID) {}

    bool doInitialization(Module &M) override
    {
        /*
         * Debugging
         */
        Utils::ExitOnInit();


        return false;
    }


    bool runOnModule(Module &M) override
    {
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
             * Collect LoopInfo (it's a function pass)
             */
            map<Function *, LoopInfo *> LI_map;
            auto loops = N.getLoops();
            for (auto loop : *loops) {
                auto LS = loop->getLoopStructure();
                auto F = LS->getFunction();
                LI_map[F] = &getAnalysis<LoopInfoWrapperPass>(*F).getLoopInfo();
            }

            /*
             * Unroll candidate loops
             */
            modified = LoopUnroller::Unroll(N, M, LI_map, LoopUnrollCount);

        } else if (LoopScheduleStep == true) {
            /*
             * Schedule writes in loops together
             */
            modified = LoopWriteScheduler::Schedule(N, M);
        }



        /*
         * Run verifier on each function instrumented
         */
        Utils::Verify(M);


        return modified;
    }


    void getAnalysisUsage(AnalysisUsage &AU) const override
    {
        /*
         * Declare NOELLE dependence
         */
        AU.addRequired<Noelle>();
        AU.addRequired<LoopInfoWrapperPass>();
        return;
    }

};


char CAT::ID = 0;
static RegisterPass<CAT> X("ics", "Intermittent computing scheduling");

static CAT *_PassMaker = NULL;
static RegisterStandardPasses _RegPass1(PassManagerBuilder::EP_OptimizerLast,
                                        [](const PassManagerBuilder &, legacy::PassManagerBase &PM) {
            if(!_PassMaker){ PM.add(_PassMaker = new CAT());} }); // ** for -Ox
static RegisterStandardPasses _RegPass2(PassManagerBuilder::EP_EnabledOnOptLevel0,
                                        [](const PassManagerBuilder &, legacy::PassManagerBase &PM) {
            if(!_PassMaker){ PM.add(_PassMaker = new CAT());} }); // ** for -O0
}
