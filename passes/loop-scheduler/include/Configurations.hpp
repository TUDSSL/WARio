
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

#include "LoopWriteScheduler.hpp"

using namespace llvm;


/*
 * Command line options for pass
 */
extern cl::opt<bool> NoVerify;

extern cl::opt<bool> InitExit;

extern cl::opt<bool> Debug;

extern cl::opt<bool> AutomatedTestingPrint;

extern cl::opt<bool> LoopUnrollStep;

extern cl::opt<unsigned int> LoopUnrollCount;

extern cl::opt<unsigned int> LoopUnrollInstructionThreshold;

extern cl::opt<bool> LoopScheduleStep;

extern cl::opt<float> RescheduleRatioMax;

extern cl::opt<bool> NoRescheduleRatio;

#ifdef DEBUG_PRINT
#define dbg() errs()
#else
#define dbg() if (Debug == false) {} else errs()
#endif
