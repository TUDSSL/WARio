#pragma once

#include "Configurations.hpp"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include <functional>

using namespace llvm;

namespace Utils {
/*
 * Init
 */
void ExitOnInit(void);

Function *GetMethod(Module *M, const std::string Name);

/*
 * Injection helpers
 */
llvm::IRBuilder<> GetBuilder(Function *F, Instruction *InsertionPoint);

llvm::IRBuilder<> GetBuilder(Function *F, BasicBlock *InsertionPoint);

bool IsInstrumentable(Function &F);

/*
 * Verification helpers
 */
bool Verify(Module &M);

/*
 * Metadata handlers
 */
void SetInstrumentationMetadata(Instruction *I, const std::string MDTypeString,
                                const std::string MDLiteral);

/*
 * Global Variable helper
 */
GlobalVariable *GetOrInsertGlobalInteger(llvm::Module *M,
                                               llvm::IntegerType *Type,
                                               const std::string Name,
                                               uint64_t Initial = 0,
                                               size_t Alignment = 4);

/*
 * Iteration Helper
 *
 * FunctionToInvokePerInstruction returns [bool, bool]
 * Stop, StopPath
 *
 * Function returns true if the iteration ends earlier.
 * It returns false otherwise.
 */
bool ReverseIterateOverInstructions(
    Instruction *From, Instruction *To,
    std::function<std::pair<bool, bool>(Instruction *I)>
        FucntionToInvokePerInstruction,
    bool DebugPrint = false);


}  // namespace Utils
