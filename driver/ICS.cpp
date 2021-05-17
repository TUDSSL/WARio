#include "LoopWriteScheduler.hpp"
#include "Utils.hpp"

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
             * Unroll candidate loops
             */
            auto loops = N.getLoops();
            for (auto loop : *loops) {
                auto LS = loop->getLoopStructure();
                auto entryInst = LS->getEntryInstruction();
                auto F = LS->getFunction();
                auto functionName = F->getName();

                if (LoopWriteScheduler::isCandidate(LS) == false) {
                    continue;
                }

                errs() << "Function: " << functionName << "\n"
                       << "  Loop: " << *entryInst << "\n";
                unrollLoop(LS, 2);
            }
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

    bool unrollLoop(LoopStructure *LS, int count) {
        bool modified = false;
        auto &loopFunction = *LS->getFunction();

        auto &LI = getAnalysis<LoopInfoWrapperPass>(loopFunction).getLoopInfo();

        // TODO: is a module pass, can just get the loop from header
        //auto &LI = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();

        // auto &DT =
        // getAnalysis<DominatorTreeWrapperPass>(loopFunction).getDomTree(); auto
        // &SE = getAnalysis<ScalarEvolutionWrapperPass>(loopFunction).getSE();
        // auto &AC =
        //    getAnalysis<AssumptionCacheTracker>().getAssumptionCache(loopFunction);

        errs() << "Unrolling " << loopFunction.getName() << "\n";

        auto header = LS->getHeader();
        auto llvmLoop = LI.getLoopFor(header);

        UnrollLoopOptions opts;
        opts.Count = count;
        opts.TripCount = 0;     // SE.getSmallConstantTripCount(llvmLoop);
        opts.TripMultiple = 1;  // SE.getSmallConstantTripMultiple(llvmLoop);
        opts.Force = true;
        opts.AllowRuntime = true;
        opts.AllowExpensiveTripCount = true;
        opts.PreserveCondBr = false;
        opts.PeelCount = 0;
        opts.UnrollRemainder = false;
        opts.ForgetAllSCEV = false;
        OptimizationRemarkEmitter ORE(&loopFunction); // might be useless

        // auto unrolled =
        //    llvm::UnrollLoop(llvmLoop, opts, &LI, &SE, &DT, &AC, &ORE, true);
        auto unrolled = llvm::UnrollLoop(llvmLoop, opts, &LI, nullptr, nullptr,
                                         nullptr, &ORE, true);

        // UnrollLoop(llvmLoop, ;
        errs() << "Done llvm unrolling\n";
        /*
         *    * Check if the loop unrolled.
         *       */
        switch (unrolled) {
            case LoopUnrollResult::FullyUnrolled:
                errs() << "   Fully unrolled\n";
                modified = true;
                break;

            case LoopUnrollResult::PartiallyUnrolled:
                errs() << "   Partially unrolled\n";
                modified = true;
                break;

            case LoopUnrollResult::Unmodified:
                errs() << "   Not unrolled\n";
                // modified = false;
                break;

            default:
                errs() << "Abort\n";
                abort();
        }

        return modified;
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
