#include "Configurations.hpp"
#include "LoopUnroller.hpp"
#include "LoopWriteScheduler.hpp"
#include "PassUtils.hpp"

bool LoopUnroller::UnrollLoop(LoopStructure &LS, LoopInfo &LI, int count) {
  bool modified = false;
  auto &loopFunction = *LS.getFunction();

  dbg() << "Unrolling " << loopFunction.getName() << " " << count << "x\n";

  auto header = LS.getHeader();
  auto llvmLoop = LI.getLoopFor(header);

  // Error if the LLVM loop info is not found
  assert((llvmLoop != nullptr) && "could not find LLVM loop");

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
  OptimizationRemarkEmitter ORE(&loopFunction);  // might be useless

  auto unrolled = llvm::UnrollLoop(llvmLoop, opts, &LI, nullptr, nullptr,
                                   nullptr, &ORE, true);

  // dbg() << "Done llvm unrolling\n";
  /*
   * Check if the loop unrolled.
   */
  switch (unrolled) {
    case LoopUnrollResult::FullyUnrolled:
      dbg() << "   Fully unrolled\n";
      modified = true;
      break;

    case LoopUnrollResult::PartiallyUnrolled:
      dbg() << "   Partially unrolled\n";
      modified = true;
      break;

    case LoopUnrollResult::Unmodified:
      errs() << "   Not unrolled\n";
      //assert(false && "Loop not unrolled");
      modified = false;
      break;

    default:
      errs() << "Abort\n";
      abort();
  }

  if (modified) {
    // Add metadata
    string meta = "lws_unroll_" + to_string(count);
    Utils::SetInstrumentationMetadata(LS.getEntryInstruction(),
                                      "loop_write_scheduler", meta);

    // Mark the loop for loop write scheduling
    MarkForLoopWriteScheduling(LS);
  }

  return modified;
}

bool LoopUnroller::IsCandidate(Noelle &N, LoopDependenceInfo *LDI,
                               LoopCandidateInfo &LCI) {
  auto LS = LDI->getLoopStructure();
  auto n_subloops = LS->getNumberOfSubLoops();

  assert(LS != nullptr);

  bool candidate = true;

  /*
   * Only transform inner loops
   */
  if (n_subloops > 0) {
    dbg() << "    [no-loop-candidate] loop has subloops\n";
    candidate = false;
  }

  /*
   * A candidate loop may only have one latch
   */
  auto latches = LS->getLatches();
  if (latches.size() > 1) {
    dbg() << "    [no-loop-candidate] loop has multiple latches\n";
    candidate = false;
  }

  /*
   * A candidate can not be an infinite loop
   * (The LLVM Unroller does not like unrolling infinite loops)
   */
  if (LS->getLoopExitEdges().size() == 0) {
    dbg() << "    [no-loop-candidate] loop has no exit edges\n";
    candidate = false;
  }

  /*
   * Decide the unroll factor depending on the number of instructions
   */
  if (LS->getNumberOfInstructions() > LoopUnrollInstructionThreshold) {
    dbg() << "    [no-loop-candidate] loop has " << LS->getNumberOfInstructions()
           << " instructions, the threshold is configured as "
           << LoopUnrollInstructionThreshold << "\n";
    candidate = false;
  }


  /*
   * Check if the loop contains any calls
   */
  for (const auto &I : LS->getInstructions()) {
    if (isa<CallInst>(I) && (isa<IntrinsicInst>(I) == false)) {
      dbg() << "    [no-loop-candidate] loop contains a function call: " << *I << "\n";
      candidate = false;
    }
  }

  /*
   * Check if there are any WAR violations we might be able to solve
   */
  LoopWriteScheduler::InstructionDependecyMapTy WarDepMap;
  LoopWriteScheduler::InstructionDependecyMapTy RawDepMap;
  LoopWriteScheduler::collectLoopInstructionDependencies(LDI, WarDepMap, RawDepMap);
  int LoopWars = WarDepMap.size();

  /*
   * Check if there are loop carried WAR violations that we might be able to
   * solve. This is the case when a RAW in the loop FDG has a WAR dependence
   * in the PDG.
   */
  int LoopCarriedWars = 0;
  auto PDG = N.getProgramDependenceGraph();
  for (auto &kv : RawDepMap) {
    auto Read = kv.first;
    auto Writes = kv.second;

    /*
     * Check for WAR dependences between the Read and Write
     */
    for (auto Write : Writes) {
      auto Deps = PDG->getDependences(Read, Write);
      for (auto D : Deps) {
        if (D->isWARDependence()) ++LoopCarriedWars;
      }
    }
  }

  /*
   * If there are no WAR violations in the loop
   * and if there are also no loop carried WAR violations, then this
   * is not a candidate loop
   */
  if (LoopWars == 0 && LoopCarriedWars == 0) {
    dbg() << "    [no-loop-candidate] loop does not contain WAR violations\n";
    candidate = false;
  }

  /*
   * The WAR stores we want to reschedule should not be volatile
   */
  // TODO

  /*
   * Populate the candidate info
   */
  LCI.WarCount = LoopWars;
  LCI.LoopCarriedWarCount = LoopCarriedWars;

  // Is a candidate
  return candidate;
}

LoopUnroller::LoopUnrollCandidatesTy LoopUnroller::CollectUnrollCandidates(
    Noelle &N, Module &M) {
  dbg() << "Running LoopUnroller::CollectUnrollCandidates on: " << M.getName()
         << "\n";

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

    dbg() << "Checking func: " << functionName << "\n"
           << "  Loop: " << *entryInst << "\n";

    if (IsCandidate(N, L, LCI) == false) {
      continue;
    }

    /*
     * Add the candidate
     */
    LCI.LoopDependenceInfo = L;
    LCI.Function = F;
    LUC.push_back(LCI);
  }

  for (auto &LCI : LUC) {
    dbg() << "\n";
    dbg() << "Found candidate in function: " << LCI.Function->getName() << "\n"
          << "  Loop: "
          << *LCI.LoopDependenceInfo->getLoopStructure()->getEntryInstruction()
          << "\n"
          << "  WarCount: " << LCI.WarCount << "\n"
          << "  LoopCarriedWarCount: " << LCI.LoopCarriedWarCount << "\n";
  }

  return LUC;
}

void LoopUnroller::MarkForLoopWriteScheduling(LoopStructure &LS) {
  Utils::SetInstrumentationMetadata(
      LS.getEntryInstruction(), "loop_write_scheduler", "lws_unrolled_loop");
}
