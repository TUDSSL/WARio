#include "Expander.hpp"

namespace timesqueezer {

bool Expander::expandByInlining (
  Noelle &noelle,
  Hot *hot,
  LoopStructure *ls
  ){
  auto modified = false;

  /*
   * Select the only instructions we count
   */
  auto filter = [hot](Instruction *i) -> bool {

    /*
     * We don't care about instructions that are not executed.
     */
    if (  true
          && hot->isAvailable()
          && (hot->getInvocations(i) == 0)
       ){
      return false;
    }

    return true;
  };

  /*
   * Check if the loop has any instructions
   */
  if (ls->getNumberOfInstructions() == 0) {
    errs() << "   This loop does got contain any instructions (" << ls->getFunction()->getName() << ")\n";
    return false;
  }

  /*
   * Check if the loop is already too big.
   */
  auto firstInst = ls->getEntryInstruction();
  if (ls->getNumberOfInstructions() >= this->maxLoopSize){
    errs() << "   This loop is too big: (" << ls->getFunction()->getName() << ") " << *firstInst << "\n";
    return false;
  }
  errs() << "   Loop (" << ls->getFunction()->getName() << ") " << *firstInst << "\n";

  /*
   * Identify calls to inline.
   */
  std::set<CallInst *> toInline;
  auto loopSize = hot->getStaticInstructions(ls, filter);
  for (auto inst : ls->getInstructions()){

    /*
     * Fetch the next call we could inline.
     */
    auto callInst = this->isItEligableToBeInlined(inst);
    if (callInst == nullptr){
      continue ;
    }

    /*
     * Check if we should inline the call.
     */
    auto calleeFunc = callInst->getCalledFunction();
    assert(calleeFunc != nullptr);

    //if (  true
    //      && (calleeFunc->getName()[0] == '_') // ignore functions that start with _ (buildin)
    //   ){
    //  continue ;
    //}
    auto calleeSize = hot->getStaticInstructions(calleeFunc, filter);
    if ((calleeSize + loopSize) >= maxLoopSize){
      errs() << "     Inlining the call to " << calleeFunc->getName() << " would lead to a big loop. So skip it.\n";
      continue ;
    }

    /*
     * Inline
     */
    errs() << "     Considering inlining the call instruction " << *callInst << "\n";
    toInline.insert(callInst);
  }

  /*
   * Inline
   */
  for (auto c : toInline){
    errs() << "Attempting to inline: " << c->getCalledFunction()->getName() << "\n";

    /*
     * Check if the function isn't too big.
     */
    auto func = c->getFunction();
    auto funcSize = hot->getStaticInstructions(func);
    auto calleeFunc = c->getCalledFunction();
    auto calleeSize = hot->getStaticInstructions(calleeFunc, filter);
    if ((funcSize + calleeSize) > this->maxFunctionSize){
      errs() << "   The call " << *c << " from " << func->getName() << " would make the caller too big\n";
      continue ;
    }

    /*
     * We can inline the call
     *
     * Inline the call
     */
    errs() << "     Inline the call instruction " << *c << "\n";
    InlineFunctionInfo IFI;
    InlineFunction(c, IFI);
    modified = true;
  }

  return modified;
}

}
