#pragma once

#include "Configurations.hpp"

using namespace llvm;

namespace LoopWriteScheduler {

struct LoopWriteSchedulerInfo {
  int RescheduledWars = 0;
  int ResolvedLoads = 0;
  int InsertedLoadChecks = 0;
};

typedef map<Instruction *, list<Value *>> InstructionDependecyMapTy;

bool isCandidate(LoopDependenceInfo *LDI);
bool isUnrolledCandidate(LoopDependenceInfo *LDI);
bool schedule(Noelle &N, Module &M);

void collectLoopInstructionDependencies(LoopDependenceInfo *loop,
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
