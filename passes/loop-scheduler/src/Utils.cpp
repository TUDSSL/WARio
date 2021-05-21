#include "Utils.hpp"

using namespace Utils;

/*
 * ExitOnInit
 *
 * Register pass, execute doInitialization method but do not perform
 * any analysis or transformation --- exit in runOnModule --- mostly
 * for testing scenarios
 */
void Utils::ExitOnInit(void)
{
    if (InitExit)
    {
        errs() << "Exiting KARAT Transforms ...\n";
        exit(0);
    }

    return;
}

Function *Utils::GetMethod(
    Module *M,
    const std::string Name
)
{
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
llvm::IRBuilder<> Utils::GetBuilder(
    Function *F,
    Instruction *InsertionPoint
)
{
    llvm::IRBuilder<> Builder{InsertionPoint};
    Instruction *FirstInstWithDBG = nullptr;

    for (auto &I : instructions(F))
    {
        if (I.getDebugLoc())
        {
            FirstInstWithDBG = &I;
            break;
        }
    }

    if (FirstInstWithDBG) Builder.SetCurrentDebugLocation(FirstInstWithDBG->getDebugLoc());

    return Builder;
}


llvm::IRBuilder<> Utils::GetBuilder(
    Function *F,
    BasicBlock *InsertionPoint
)
{
    llvm::IRBuilder<> Builder{InsertionPoint};
    Instruction *FirstInstWithDBG = nullptr;

    for (auto &I : instructions(F))
    {
        if (I.getDebugLoc())
        {
            FirstInstWithDBG = &I;
            break;
        }
    }

    if (FirstInstWithDBG) Builder.SetCurrentDebugLocation(FirstInstWithDBG->getDebugLoc());

    return Builder;
}


bool Utils::IsInstrumentable(Function &F)
{
    /*
     * Perform check
     */
    if (false
        || (F.isIntrinsic())
        || (F.empty()))
        return false;


    return true;
}


bool Utils::Verify(Module &M)
{
    /*
     * Check pass settings
     */
    if (NoVerify) return true;


    /*
     * Run LLVM verifier on each function of @M
     */
    bool Failed = false;
    for (auto &F : M)
    {
        if (verifyFunction(F, &(errs())))
        {
            DEBUG_ERRS << "Failed verification: "
                       << F.getName() << "\n"
                       << F << "\n";

            Failed |= true;
        }
    }


    return !Failed;
}


void Utils::SetInstrumentationMetadata(
    Instruction *I,
    const std::string MDTypeString,
    const std::string MDLiteral
)
{
    /*
     * Build metadata node using @MDTypeString
     */
    MDNode *TheNode =
        MDNode::get(
            I->getContext(),
            MDString::get(
                I->getContext(),
                MDTypeString
            )
        );


    /*
     * Set metadata with @MDLiteral
     */
    I->setMetadata(
        MDLiteral,
        TheNode
    );


    return;
}

