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
} // namespace LoopWriteScheduler
