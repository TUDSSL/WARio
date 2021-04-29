#include "include/Utils.hpp"

namespace
{
struct CAT : public ModulePass
{
    static char ID;

    CAT() : ModulePass(ID) {}

    bool doInitialization(Module &M) override
    {
        /*
         * Debugging
         */  
        Utils::ExitOnInit();


        return false;
    }


    bool runOnModule(Module &M) override
    {
        /*
         * Debugging
         */  
        Utils::ExitOnInit();

 
        /*
         * Fetch NOELLE 
         */ 
        auto &N = getAnalysis<Noelle>();


        /*
         * Run verifier on each function instrumented
         */
        Utils::Verify(M);


        return false;
    }


    void getAnalysisUsage(AnalysisUsage &AU) const override
    {   
        /*
         * Declare NOELLE dependence 
         */
        AU.addRequired<Noelle>();
        return;
    } 

};
    
    
char CAT::ID = 0;
static RegisterPass<CAT> X("ics", "Intermittent computing scheduling");

static CAT *_PassMaker = NULL;
static RegisterStandardPasses _RegPass1(PassManagerBuilder::EP_OptimizerLast,
                                        [](const PassManagerBuilder &, legacy::PassManagerBase &PM) {
            if(!_PassMaker){ PM.add(_PassMaker = new CAT());} }); // ** for -Ox
static RegisterStandardPasses _RegPass2(PassManagerBuilder::EP_EnabledOnOptLevel0,
                                        [](const PassManagerBuilder &, legacy::PassManagerBase &PM) {
            if(!_PassMaker){ PM.add(_PassMaker = new CAT());} }); // ** for -O0
}
