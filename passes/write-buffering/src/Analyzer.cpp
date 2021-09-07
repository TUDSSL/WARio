#include "../include/Analyzer.hpp"

/*
 * ---------- Constructors ----------
 */
Analyzer::Analyzer(
    Function &F,
    Noelle &noelle
) : F{F}, noelle{noelle}
{
    /* 
     * Debugging
     */
    DEBUG_INFO << F.getName() << "\n";
    return;
} ;


/*
 * ---------- Drivers ----------
 */
void Analyzer::Analyze(void)
{
    /*
     * TOP
     *
     * Analyze each write (store) in @this->F and its dependences
     * in the context of its respective parent basic blocks
     */
    

    /*
     * <Step 1.> Record writes
     */
    _recordWrites();


    /*
     * <Step 2.> Record reads after writes (in parent) 
     */
    _recordReadsAfterWriteInParentBasicBlock();


    /*
     * <Step 3.> Record dependences after writes (in parent)
     */
    _recordDependencesAfterWriteInParentBasicBlock();


    /*
     * <Step 4.> Mark writes that are profitable
     */
    _analyzeWriteMovementProfitability();


    return;
}


void Analyzer::Dump(void)
{
    /*
     * TOP --- Dump the statistics about writes that could be moved and 
     * writes with dependences that need to be moved
     */

    /*
     * Setup
     */
    std::map<unsigned, unsigned> NumReadsAfterWrites;
    std::map<unsigned, unsigned> NumDependencesAfterWrites;


    /*
     * Fill out maps
     */
    for (auto Store : AllWrites)
    {
        unsigned NumReads = TotalReadsAfterWriteInParentBasicBlock[Store].size();
        unsigned NumDependences = TotalDependencesAfterWriteInParentBasicBlock[Store].size();
        NumReadsAfterWrites[NumReads]++;
        NumDependencesAfterWrites[NumDependences]++;
    }


    /*
     * Dump
     */
    errs() << "\n---\nFor " << F.getName() << ":\n";

    errs() << "  Histogram for reads:\n";
    for (auto const &[ReadTally, NumWrites] : NumReadsAfterWrites) {
        errs() << "    " << ReadTally << " reads : " << NumWrites << " writes\n";
    }

    errs() << "  Histogram for deps:\n";
    for (auto const &[DepTally, NumWrites] : NumDependencesAfterWrites) {
        errs() << "    " << DepTally << " deps : " << NumWrites << " writes\n";
    }

    errs() << "  Number of stores that should move: " << NumProfitableMoves << "\n";
    for (auto const &[Store, IsProfitableTomove] : WritesProfitableToMove) {
        if (IsProfitableTomove) {
            errs() << "     " << *Store << "\n";
        }
    }

    errs() << "\n\n";


    return;
}


/*
 * ---------- Getters/Analysis ----------
 */
std::unordered_set<StoreInst *> Analyzer::GetAnalyzedWrites(void)
{
    return AllWrites;
}


std::unordered_set<Instruction *> Analyzer::GetReadsAfterWriteInBasicBlock(StoreInst *I)
{
    return TotalReadsAfterWriteInParentBasicBlock[I];
}


unsigned Analyzer::GetNumberOfTotalReadsAfterWriteInBasicBlock(StoreInst *I)
{
    return TotalReadsAfterWriteInParentBasicBlock[I].size();
}


unsigned Analyzer::GetNumberOfReadDependenceConflictsAfterWriteInBasicBlock(StoreInst *I)
{
    return TotalDependencesAfterWriteInParentBasicBlock[I].size();
}


bool Analyzer::IsWriteProfitableToMoveInBasicBlock(StoreInst *I)
{
    return WritesProfitableToMove[I];
}


/*
 * ---------- Private Methods ----------
 */
void Analyzer::_recordWrites(void)
{
    /*
     * TOP --- Record all StoreInsts in @this->F
     */
    for (auto &B : F)
        for (auto &I : B)
            if (isa<StoreInst>(&I))
                AllWrites.insert(cast<StoreInst>(&I));


    return;
}


void Analyzer::_recordReadsAfterWriteInParentBasicBlock(void)
{
    /*
     * TOP
     * 
     * For each store, record the reads (loads and calls) that are 
     * topologically after the store within its parent basic block
     */
    for (auto Store : AllWrites)
    {
        /*
         * Get the parent basic block
         */
        BasicBlock *Parent = Store->getParent();

        
        /*
         * Record reads (loads and calls) topologically after "Store"
         */
        Instruction *Next = Store->getNextNode();
        while (
            true
            && (Next)
            && (Next->getParent() == Parent)
        )
        {
            if (false
                || isa<LoadInst>(Next)
                || isa<CallInst>(Next)) 
                TotalReadsAfterWriteInParentBasicBlock[Store].insert(Next);

            Next = Next->getNextNode();
        }


        /*
         * Debugging
         */
        DEBUG_INFO << *Store << " (ro): " << TotalReadsAfterWriteInParentBasicBlock[Store].size() << "\n";
        for (auto Read : TotalReadsAfterWriteInParentBasicBlock[Store])
            DEBUG_INFO << "     " << *Read << "\n";
    }


    return;
}


void Analyzer::_recordDependencesAfterWriteInParentBasicBlock(void)
{
    /*
     * TOP
     * 
     * Get all outgoing dependence instructions for each write (store) that 
     * exist in its respective parent basic blocks --- based on the PDG
     */

    /*
     * Fetch the function dependence graph
     */
    PDG *FDG = noelle.getFunctionDependenceGraph(&F);


    for (auto Store : AllWrites)
    {
        /*
         * Set up lambda iterator for PDG
         */    
        std::unordered_set<Instruction *> Dependences;
        auto Iterator =
            [Store, &Dependences]
            (Value *DepValue, DGEdge<Value> *Dep) -> bool {

            /*
             * 1. Arguments, globals, and other values are outside
             *    of the basic block already, ignore
             * 
             * 2. If an instruction depends on itself, ignore
             * 
             * 3. If the instruction is not part of the basic block, ignore
             */
            Instruction *DepInst = dyn_cast<Instruction>(DepValue);
            if (false
                || (!DepInst) /* 1. */
                || (DepInst == Store) /* 2. */
                || (DepInst->getParent() != Store->getParent())) /* 3. */
                return false;


            /*
             * Insert the dependence into the Dependences set
             */
            Dependences.insert(DepInst);


            return false;

        };


        /*
         * Iterate over the PDG --- assume outgoing dependences for now
         * (i.e. we're assuming topologically "downward" code motion)
         */
        FDG->iterateOverDependencesFrom(
            Store,
            false, /* Control dependences */
            true, /* Memory dependences */
            true, /* Register dependences */
            Iterator
        );


        /*
         * Store the dependences internally
         */
        for (auto Dependence : Dependences)
            TotalDependencesAfterWriteInParentBasicBlock[Store].insert(Dependence);


        /*
         * Debugging
         */
        DEBUG_INFO << *Store << " (do): " << TotalDependencesAfterWriteInParentBasicBlock[Store].size() << "\n";
        for (auto Dependence : TotalDependencesAfterWriteInParentBasicBlock[Store])
            DEBUG_INFO << "     " << *Dependence << "\n";
    }


    return;
}


void Analyzer::_analyzeWriteMovementProfitability(void)
{
    /*
     * TOP --- Analyze each write and determine whether it's 
     * profitable to move it or not. 
     * 
     * Profitability = 
     *   a) At least 1 read after write (in parent)
     *   b) No dependences after write (in parent)
     */


    /*
     * Analyze each write
     */
    for (auto Store : AllWrites)
    {
        /*
         * <Profitability.a>
         */
        if (!TotalReadsAfterWriteInParentBasicBlock[Store].size()) continue;


        /*
         * <Profitability.b> 
         */
        if (TotalDependencesAfterWriteInParentBasicBlock[Store].size()) continue;


        /*
         * We have a write that we should move --- record it
         */
        WritesProfitableToMove[Store] = true;
        NumProfitableMoves++;
    }


    /*
     * Debugging
     */
    for (auto Store : AllWrites)
        DEBUG_INFO << *Store << " (profitable?): " << WritesProfitableToMove[Store] << "\n";


    return;
}
