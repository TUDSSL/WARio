#include "Configurations.hpp"

using namespace llvm;

namespace Utils
{
    /* 
     * Init
     */ 
    void ExitOnInit(void) ;


    /*
     * Proper utils
     */ 
    void PrintPassArguments(void) ;

    bool IsViableFunction(Function &F) ;

    void InjectMetadata(
        std::string const MDLiteral,
        std::string const MDNodeString,
        Instruction *I
    );

}