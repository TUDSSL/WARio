#pragma once

#include "Configurations.hpp"

using namespace llvm;

namespace LoopWriteScheduler {

typedef map<Instruction *, list<Value *>> InstructionDependecyMapTy;

bool isCandidate(LoopDependenceInfo *LDI);
bool isUnrolledCandidate(LoopDependenceInfo *LDI);
bool schedule(Noelle &N, Module &M);

void collectInstructionDependencies(LoopDependenceInfo *loop,
                                    InstructionDependecyMapTy &WarDepMap,
                                    InstructionDependecyMapTy &RawDepMap);

void orderWars(Noelle &N, LoopStructure *LS,
                                   BasicBlock *latch,
                                   InstructionDependecyMapTy &WarDepMap,
                                   list<Instruction *> &WarDepOrder);

void findLoadsDependingOnRescheduledStores(
    list<Instruction *> &warRescheduleInst,
    InstructionDependecyMapTy &RawDepMap,
    map<Instruction *, list<Instruction *>> &affectedLoadStoresMap);

void insertLoadChecks(
    map<Instruction *, list<Instruction *>> &affectedLoadStoresMap,
    Function *F);

}  // namespace LoopWriteScheduler
