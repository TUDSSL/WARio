#pragma once

#include "Configurations.hpp"

using namespace llvm;

namespace LoopWriteScheduler {

    typedef map<Instruction *, list<Value *>> InstructionDependecyMapTy;

    bool isCandidate(LoopStructure *LS);
    bool schedule(Noelle &N, Module &M);
}
