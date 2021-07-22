
#pragma once

#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/DerivedUser.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Mangler.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/LoopUtils.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"
#include "llvm/Analysis/AssumptionCache.h"
#include "llvm/IR/DataLayout.h"

#include "llvm/Transforms/Utils/LoopUtils.h"
#include "llvm/Transforms/Utils/UnrollLoop.h"


#include "Noelle.hpp"

#include <string>
#include <vector>
#include <unordered_map>
#include <unordered_set>
#include <set>
#include <cassert>

/*
 * Debugging
 */
#define DEBUG_INFO(str) do { if (Debug) { errs() << str; } } while (0)
#define OBJ_INFO(obj) do { if (Debug) { obj->print(errs()); errs() << "\n"; } } while (0)
#define VERIFY_DEBUG_INFO(str) do { if (!NoVerify) { errs() << str; } } while (0)
#define VERIFY_OBJ_INFO(obj) do { if (!NoVerify) { obj->print(errs()); errs() << "\n"; } } while (0)
#define DEBUG_ERRS if (Debug) errs()


using namespace llvm;


/*
 * Command line options for pass
 */
extern cl::opt<bool> NoVerify;

extern cl::opt<bool> InitExit;

extern cl::opt<bool> Debug;

extern cl::opt<bool> InsertCheckpointCount;

extern cl::opt<bool> UnitPlacementCost;

extern cl::opt<bool> BruteForceHittingSet;

extern cl::opt<bool> UseRatchetImplementation;

extern cl::opt<bool> InsertCheckpointIntrinsic;

extern cl::opt<bool> InsertCheckpointBeforeCall;

extern cl::opt<bool> InsertCheckpointAfterCall;

#ifdef DEBUG_PRINT
#define dbg() errs()
#else
#define dbg() if (true) {} else errs()
#endif
