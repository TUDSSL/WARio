#include "PassUtils.hpp"
#include "llvm/IR/DerivedTypes.h"
#include <functional>
#include <string>

using namespace llvm;
using namespace Utils;

/*
 * ExitOnInit
 *
 * Register pass, execute doInitialization method but do not perform
 * any analysis or transformation --- exit in runOnModule --- mostly
 * for testing scenarios
 */
void Utils::ExitOnInit(void) {
  if (InitExit) {
    errs() << "Exiting KARAT Transforms ...\n";
    exit(0);
  }

  return;
}

Function *Utils::GetMethod(Module *M, const std::string Name) {
  /*
   * Fetch function with @Name from @M --- sanity
   * check that the function exists
   */
  Function *F = M->getFunction(Name);
  errs() << "Fetching " << Name << " ... \n";
  assert(!!F && "Utils::GetMethod: Can't fetch!");
  return F;
}

/*
 * GetBuilder
 *
 * Generates a specific IRBuilder instance that is fitted with
 * the correct debug location --- necessary for injections
 * into the Nautilus bitcode
 */
llvm::IRBuilder<> Utils::GetBuilder(Function *F, Instruction *InsertionPoint) {
  llvm::IRBuilder<> Builder{InsertionPoint};
  Instruction *FirstInstWithDBG = nullptr;

  for (auto &I : instructions(F)) {
    if (I.getDebugLoc()) {
      FirstInstWithDBG = &I;
      break;
    }
  }

  if (FirstInstWithDBG)
    Builder.SetCurrentDebugLocation(FirstInstWithDBG->getDebugLoc());

  return Builder;
}

llvm::IRBuilder<> Utils::GetBuilder(Function *F, BasicBlock *InsertionPoint) {
  llvm::IRBuilder<> Builder{InsertionPoint};
  Instruction *FirstInstWithDBG = nullptr;

  for (auto &I : instructions(F)) {
    if (I.getDebugLoc()) {
      FirstInstWithDBG = &I;
      break;
    }
  }

  if (FirstInstWithDBG)
    Builder.SetCurrentDebugLocation(FirstInstWithDBG->getDebugLoc());

  return Builder;
}

bool Utils::IsInstrumentable(Function &F) {
  /*
   * Perform check
   */
  if (false || (F.isIntrinsic()) || (F.empty())) return false;

  return true;
}

bool Utils::Verify(Module &M) {
  /*
   * Check pass settings
   */
  if (NoVerify) return true;

  /*
   * Run LLVM verifier on each function of @M
   */
  bool Failed = false;
  for (auto &F : M) {
    if (verifyFunction(F, &(errs()))) {
      dbgs() << "Failed verification: " << F.getName() << "\n" << F << "\n";

      Failed |= true;
    }
  }

  return !Failed;
}

void Utils::SetInstrumentationMetadata(Instruction *I,
                                       const std::string MDTypeString,
                                       const std::string MDLiteral) {
  /*
   * Build metadata node using @MDTypeString
   */
  MDNode *TheNode = MDNode::get(I->getContext(),
                                MDString::get(I->getContext(), MDTypeString));

  /*
   * Set metadata with @MDLiteral
   */
  I->setMetadata(MDLiteral, TheNode);

  return;
}

GlobalVariable *Utils::GetOrInsertGlobalInteger(llvm::Module *M,
                                               llvm::IntegerType *Type,
                                               const std::string Name,
                                               uint64_t Initial,
                                               size_t Alignment) {
  M->getOrInsertGlobal(Name, Type);
  auto G = M->getNamedGlobal(Name);
  G->setLinkage(GlobalValue::CommonLinkage);
  G->setDSOLocal(true);
  G->setAlignment(Alignment);
  G->setInitializer(
      ConstantInt::get(M->getContext(), APInt(Type->getBitWidth(), Initial)));

  return G;
}

bool Utils::ReverseIterateOverInstructions(
    Instruction *From, Instruction *To,
    std::function<std::pair<bool,bool>(Instruction *I)> FucntionToInvokePerInstruction,
    bool DebugPrint) {

  auto FBB = From->getParent();
  auto TBB = To->getParent();

  const BasicBlock::iterator FromIt(From);
  const BasicBlock::iterator ToIt(To);

  if (DebugPrint) {
    dbg() << "Checking Uncut Path from: " << *From << " to: " << *To << "\n";
    dbg() << "From BB: " << *FBB << "TO BB: " << *TBB << "\n";
  }

  vector<BasicBlock *> WorkList;
  unordered_set<BasicBlock *> VisitedBB;

  WorkList.push_back(TBB);
  while (WorkList.size()) {
    /*
     * Get the last BasicBlock from the WorkList
     */
    auto BB = WorkList.back();
    WorkList.pop_back();

    if (DebugPrint)
      dbg() << "\nVisiting BB: " << *BB << "\n";

    auto E = BB->begin();
    auto Cursor = ((BB == TBB) && VisitedBB.find(TBB) == VisitedBB.end())
                      ? ToIt
                      : BB->end();

    if (DebugPrint) {
      if (Cursor == BB->end())
        dbg() << "Seach start: " << "Block END" << "\n";
      else
        dbg() << "Seach start: " << *Cursor << "\n";
      dbg() << "Search end E: " << *E << "\n";
    }

    bool StopPath = false;
    bool Stop = false;
    while (Cursor-- != E) {
      auto CursorInst = cast<Instruction>(Cursor);
      tie(Stop, StopPath) = FucntionToInvokePerInstruction(CursorInst);

      if (Stop) return true;
      if (StopPath) break;
    }

    if (!StopPath) {
      // Search in the predecessor BasicBlocks if we did not already visit them.
      for (auto P : predecessors(BB))
        if (VisitedBB.insert(P).second) WorkList.push_back(P);
    }
  }

  return false;
}

/*
 * IsViableFunction
 *
 * Return true if the function actually exists with a body inside
 * the module
 */
bool Utils::IsViableFunction(Function &F)
{
    if (false
        || F.empty()) return false;

    return true;
}
