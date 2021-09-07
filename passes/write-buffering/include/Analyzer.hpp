#include "Utils.hpp"

class Analyzer
{

public:

    /*
     * Constructors
     */
    Analyzer(
        Function &F,
        Noelle &noelle
    ) ;

    
    /*
     * Drivers
     */
    void Analyze(void) ;

    void Dump(void) ;



    /*
     * Getters/Analysis
     */
    std::unordered_set<StoreInst *> GetAnalyzedWrites(void) ;

    std::unordered_set<Instruction *> GetReadsAfterWriteInBasicBlock(StoreInst *I);

    unsigned GetNumberOfTotalReadsAfterWriteInBasicBlock(StoreInst *I) ;

    unsigned GetNumberOfReadDependenceConflictsAfterWriteInBasicBlock(StoreInst *I) ;

    bool IsWriteProfitableToMoveInBasicBlock(StoreInst *I) ;



private:

    /*
     * Fields --- Some of these are overkill but who cares
     */
    Function &F;

    Noelle &noelle;

    std::unordered_set<StoreInst *> AllWrites;

    std::unordered_map<
        StoreInst *,
        std::unordered_set<Instruction *>
    > TotalReadsAfterWriteInParentBasicBlock;

    std::unordered_map<
        StoreInst *,
        std::unordered_set<Instruction *>
    > TotalDependencesAfterWriteInParentBasicBlock;

    std::unordered_map<StoreInst *, bool> WritesProfitableToMove;

    unsigned NumProfitableMoves=0;


    /*
     * Private methods
     */
    void _recordWrites(void);

    void _recordReadsAfterWriteInParentBasicBlock(void);

    void _recordDependencesAfterWriteInParentBasicBlock(void);

    void _analyzeWriteMovementProfitability(void) ;

};