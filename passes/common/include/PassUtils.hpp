#pragma once

#include "Configurations.hpp"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include <functional>

namespace Utils {
/*
 * Init
 */
void ExitOnInit(void);

llvm::Function *GetMethod(llvm::Module *M, const std::string Name);

/*
 * Injection helpers
 */
llvm::IRBuilder<> GetBuilder(llvm::Function *F, llvm::Instruction *InsertionPoint);

llvm::IRBuilder<> GetBuilder(llvm::Function *F, llvm::BasicBlock *InsertionPoint);

bool IsInstrumentable(llvm::Function &F);

/*
 * Verification helpers
 */
bool Verify(llvm::Module &M);

/*
 * Metadata handlers
 */
void SetInstrumentationMetadata(llvm::Instruction *I, const std::string MDTypeString,
                                const std::string MDLiteral);

/*
 * Global Variable helper
 */
llvm::GlobalVariable *GetOrInsertGlobalInteger(llvm::Module *M,
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
    llvm::Instruction *From, llvm::Instruction *To,
    std::function<std::pair<bool, bool>(Instruction *I)>
        FucntionToInvokePerInstruction,
    bool DebugPrint = false);

bool IsViableFunction(Function &F);

}  // namespace Utils
