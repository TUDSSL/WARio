#pragma once

#include "Configurations.hpp"
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
