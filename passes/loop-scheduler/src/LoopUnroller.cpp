#include "Configurations.hpp"
#include "LoopUnroller.hpp"
#include "LoopWriteScheduler.hpp"
#include "PassUtils.hpp"

bool LoopUnroller::UnrollLoop(LoopStructure &LS, LoopInfo &LI, int count) {
    bool modified = false;
    auto &loopFunction = *LS.getFunction();

    errs() << "Unrolling " << loopFunction.getName() << " " << count << "x\n";

    auto header = LS.getHeader();
    auto llvmLoop = LI.getLoopFor(header);

    // Error if the LLVM loop info is not found
    assert((llvmLoop != nullptr) && "could not find LLVM loop");

    // Add metadata
    string meta = "lws_unroll_" + to_string(count);
    Utils::SetInstrumentationMetadata(LS.getEntryInstruction(), "loop_write_scheduler", meta);

    // Mark the loop for loop write scheduling
    MarkForLoopWriteScheduling(LS);

    /*
     * Unroll the loop
     */
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

    //errs() << "Done llvm unrolling\n";
    /*
     * Check if the loop unrolled.
     */
    switch (unrolled) {
        case LoopUnrollResult::FullyUnrolled:
            //errs() << "   Fully unrolled\n";
            modified = true;
            break;

        case LoopUnrollResult::PartiallyUnrolled:
            //errs() << "   Partially unrolled\n";
            modified = true;
            break;

        case LoopUnrollResult::Unmodified:
            errs() << "   Not unrolled\n";
            assert(false && "Loop not unrolled");
            break;

        default:
            errs() << "Abort\n";
            abort();
    }

    return modified;
}

bool LoopUnroller::IsCandidate(LoopDependenceInfo *LDI, LoopCandidateInfo& LCI) {
    auto LS = LDI->getLoopStructure();
    auto n_subloops = LS->getNumberOfSubLoops();

    assert(LS != nullptr);

    if (n_subloops > 0) {
        errs() << "The loop has subloops, not a candidate\n";
        return false;
    }

    auto latches = LS->getLatches();
    if (latches.size() > 1) {
        errs() << "Loop has multiple latches, not a candidate\n";
        return false;
    }

    /*
     * Check if the loop contains any calls
     */
    for (const auto &I : LS->getInstructions()) {
        if (isa<CallInst>(I) && (isa<IntrinsicInst>(I) == false)) {
            errs() << "Loop contains a function call\n";
            return false;
        }
    }


    /*
     * Check if there are any WAR violations we might be able to solve
     */
    LoopWriteScheduler::InstructionDependecyMapTy WarDepMap;
    LoopWriteScheduler::InstructionDependecyMapTy RawDepMap;
    LoopWriteScheduler::collectInstructionDependencies(LDI, WarDepMap, RawDepMap);

    if (WarDepMap.size() < 1) {
        errs() << "Loop does not have enough WAR violations, not a candidate\n";
        return false;
    }

    /*
     * Populate the candidate info
     */
    LCI.WarCount = WarDepMap.size();

    // Is a candidate
    return true;
}

LoopUnroller::LoopUnrollCandidatesTy LoopUnroller::CollectUnrollCandidates(Noelle &N, Module &M) {
    errs() << "Running LoopUnroller::CollectUnrollCandidates on: " << M.getName() << "\n";

    LoopUnrollCandidatesTy LUC;

    /*
     * Fetch the entry point.
     */
    auto fm = N.getFunctionsManager();
    auto mainF = fm->getEntryFunction();

    /*
     * Iterate over the loops
     */
    auto Loops = N.getLoops();
    for (auto L : *Loops) {

        auto LS = L->getLoopStructure();
        auto entryInst = LS->getEntryInstruction();
        auto F = LS->getFunction();
        auto functionName = F->getName();

        LoopCandidateInfo LCI;

        if (IsCandidate(L, LCI) == false) {
            continue;
        }

        errs() << "Found candidate in function: " << functionName << "\n"
               << "  Loop: " << *entryInst << "\n"
               << "  WarCount: " << LCI.WarCount << "\n";

        /*
         * Add the candidate
         */
        LCI.LoopDependenceInfo = L;
        LUC.push_back(LCI);
    }
    return LUC;
}

void LoopUnroller::MarkForLoopWriteScheduling(LoopStructure &LS) {
  Utils::SetInstrumentationMetadata(
      LS.getEntryInstruction(), "loop_write_scheduler", "lws_unrolled_loop");
}
