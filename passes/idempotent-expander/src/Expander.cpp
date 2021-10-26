#include "Expander.hpp"

namespace timesqueezer {

Expander::Expander() :
    ModulePass(ID)
  , prefixString{"Expander: "}
  , maxLoopSize{800000}
  , maxFunctionSize{5000}
  , maxUnrollFactor{100}
{
  return ;
}

bool Expander::expand (
  Noelle &noelle,
  Module &M
  ){
  auto modified = false;

#if 0
  /*
   * Print the configuration.
   */
  errs() << prefixString << ": Configuration\n";
  errs() << prefixString << ":   Maximum function size = " << this->maxFunctionSize << "\n";
  errs() << prefixString << ":   Maximum loop size     = " << this->maxLoopSize << "\n";
  errs() << prefixString << ":   Maximum unroll factor = " << this->maxUnrollFactor << "\n";

  /*
   * Fetch the HOT abstraction.
   */
  auto hot = noelle.getProfiles();

  /*
   * Fetch all loops.
   */
  double minHotness = 0.0F;
  if (hot->isAvailable()){
    minHotness = 0.01F;
  }
  auto loops = noelle.getLoopStructures(minHotness);
  errs() << "Selected " << loops->size() << " loops (" << minHotness << ")\n";

  /*
   * Unroll loops
   */
  //auto moduleMetadata = "bs.no_more_unrolling";
  //std::ifstream inFile("bs.txt");
  //if (!inFile.good()){
  //  errs() << " Unroller\n";
  //  auto loopForest = noelle.organizeLoopsInTheirNestingForest(*loops);
  //  modified |= this->expandByUnrolling(noelle, hot, loopForest);
  //  if (modified){
  //    return modified;
  //  }
  //  modified = true;
  //  std::ofstream outFile("bs.txt");
  //  outFile << moduleMetadata << std::endl;
  //  outFile.close();
  //}

  /*
   * Inline calls within loops.
   */
  errs() << " Inliner\n";
  //noelle.sortByHotness(*loops);
  for (auto ls : *loops){
    modified |= this->expandByInlining(noelle, hot, ls);
  }
  if (modified){
    return modified;
  }
#else
  // Test the idea of inlining functions that occure only N times and take
  // at least one pointer argument
  auto FM = noelle.getFunctionsManager();
  auto PCF = FM->getProgramCallGraph();

  set<Function *> Candidates;
  set<Function *> NotCandidates;

  for (auto Node : PCF->getFunctionNodes()) {
    Function *F = Node->getFunction();
    assert(F != nullptr);
    if (F->getInstructionCount() == 0) continue;
    if (F->getName()[0] == '_') continue; // ignore buildin

    errs() << "\nChecking function: " << F->getName() << "\n";

    bool hasPtr = false;
    for (auto &A : F->args()) {
      hasPtr |= A.getType()->isPointerTy();
      errs() << "    arg: " << A <<  "\n";
    }

    if (hasPtr) {
      errs() << "  is a candidate\n";
      Candidates.insert(F);
    } else {
      errs() << "  is NOT a candidate\n";
      NotCandidates.insert(F);
    }
  }

  errs() << "\n";
  errs() << "Candidates: " << Candidates.size() << "\n";
  errs() << "NotCandidates: " << NotCandidates.size() << "\n";

  set<CallInst *> CallsToInline;

  // Only inline functions that are candidates AND in loops
  auto loops = noelle.getLoopStructures();
  for (auto ls : *loops) {
    auto LoopFunc = ls->getFunction();
    if (ls->getNumberOfSubLoops() == 0) {
      for (auto inst : ls->getInstructions()) {
        if (isa<CallInst>(inst)) {
          auto call = cast<CallInst>(inst);
          auto calledFunc = call->getCalledFunction();

          if (isa<IntrinsicInst>(inst)) continue;
          if (calledFunc == nullptr) continue;
          if (calledFunc->getName()[0] == '_') continue;
          if (calledFunc->isVarArg()) continue;

          if (Candidates.find(call->getCalledFunction()) != Candidates.end()) {

          errs() << "INLINING CALL TO: " << call->getCalledFunction()->getName()
                 << " in: " << LoopFunc->getName()
                 << " size: " << LoopFunc->getInstructionCount() << "  "
                 << "(" << *call << ")\n";
          CallsToInline.insert(call);
          }
        }
      }
    }
  }

  // Check if any of the candidates hold another candidate
  //for (auto *c : CallsToInline) {
  //  auto calledFunc = c->getCalledFunction();
  //  for (auto &inst : instructions(calledFunc)) {
  //    if (auto subcall = dyn_cast<CallInst>(inst)) {
  //
  //    }
  //  }
  //}


  // Inline the selected functions
  for (auto *c : CallsToInline) {
    errs() << "Inline the call instruction " << *c << "\n";
    InlineFunctionInfo IFI;
    InlineFunction(c, IFI);
    modified |= true;
  }

#endif

  return modified;
}

CallInst * Expander::isItEligableToBeInlined (Instruction *inst){
  auto callerFunction = inst->getFunction();
  auto callInst = dyn_cast<CallInst>(inst);
  if (callInst == nullptr){
    return nullptr;
  }
  auto calleeFunc = callInst->getCalledFunction();
  if (calleeFunc == nullptr){
    return nullptr;
  }
  if (calleeFunc->empty()){
    return nullptr;
  }
  if (calleeFunc == callerFunction){
    return nullptr;
  }

  /*
   * Do not inline functions that start with '_' (buildin)
   */
  if (calleeFunc->getName()[0] == '_') {
    return nullptr;
  }

  /*
   * Check if the callee function has calls that could be inline too.
   */
  if (calleeFunc->getInstructionCount() > 0) {
    for (auto &calleeInst : instructions(calleeFunc)){
      if (this->isItEligableToBeInlined(&calleeInst)){
        return nullptr;
      }
    }
  }

  return callInst;
}

}
