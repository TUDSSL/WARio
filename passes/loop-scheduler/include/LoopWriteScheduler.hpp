#pragma once

#include "Configurations.hpp"

using namespace llvm;

namespace LoopWriteScheduler {

    typedef map<Instruction *, list<Value *>> InstructionDependecyMap;

    struct InstructionDependencies {
        InstructionDependecyMap warDep;
        InstructionDependecyMap rawDep;

        void addWar(Instruction *inst, list<Value *> &deps) {
            warDep[inst] = deps;
        }

        void addRaw(Instruction *inst, list<Value *> &deps) {
            rawDep[inst] = deps;
        }
    };


    bool isCandidate(LoopStructure *LS);
    bool Schedule(Noelle &N, Module &M);

}
