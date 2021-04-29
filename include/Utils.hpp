#pragma once

#include "Configurations.hpp"

using namespace llvm;

namespace Utils
{
    /*
     * Init
     */ 
    void ExitOnInit(void);

    Function *GetMethod(
        Module *M,
        const std::string Name
    );


    /*
     * Injection helpers
     */ 
    IRBuilder<> GetBuilder(
        Function *F, 
        Instruction *InsertionPoint
    );

    IRBuilder<> GetBuilder(
        Function *F, 
        BasicBlock *InsertionPoint
    );

    bool IsInstrumentable(Function &F);


    /*
     * Verification helpers
     */ 
    bool Verify(Module &M);


    /*
     * Metadata handlers
     */ 
    void SetInstrumentationMetadata(
        Instruction *I,
        const std::string MDTypeString,
        const std::string MDLiteral
    );

} 
