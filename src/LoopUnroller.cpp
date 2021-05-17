#include "Configurations.hpp"
#include "LoopUnroller.hpp"
#include "LoopWriteScheduler.hpp"
#include "Utils.hpp"

bool unrollLoop(LoopStructure &LS, LoopInfo &LI, int count) {
    bool modified = false;
    auto &loopFunction = *LS.getFunction();

    errs() << "Unrolling " << loopFunction.getName() << " " << count << "x\n";

    auto header = LS.getHeader();
    auto llvmLoop = LI.getLoopFor(header);

    // Add metadata
    string meta = "ics_unroll_" + to_string(count);
    Utils::SetInstrumentationMetadata(LS.getEntryInstruction(), "ics_unroll", meta);

    UnrollLoopOptions opts;
    opts.Count = count;
    opts.TripCount = 0;
    opts.TripMultiple = 1;
    opts.Force = true;
    opts.AllowRuntime = true;
    opts.AllowExpensiveTripCount = true;
    opts.PreserveCondBr = false;
    opts.PeelCount = 0;
    opts.UnrollRemainder = false;
    opts.ForgetAllSCEV = false;
    OptimizationRemarkEmitter ORE(&loopFunction); // might be useless

    auto unrolled = llvm::UnrollLoop(llvmLoop, opts, &LI, nullptr, nullptr,
                                     nullptr, &ORE, true);

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
            break;

        default:
            errs() << "Abort\n";
            abort();
    }

    return modified;
}

bool LoopUnroller::Unroll(Noelle &noelle, Module &M, map<Function *, LoopInfo *> LI_map, int count) {
    errs() << "Running LoopUnroller::Unroll on: " << M.getName() << "\n";

    bool modified = false;

    /*
     * Fetch the entry point.
     */
    auto fm = noelle.getFunctionsManager();
    auto mainF = fm->getEntryFunction();

    /*
     * Iterate over the loops
     */
    auto loops = noelle.getLoops();
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

        LoopInfo *LI = LI_map[F];
        modified = modified || unrollLoop(*LS, *LI, count);

    }

    return modified;
}
