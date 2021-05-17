#pragma once

#include "Configurations.hpp"

using namespace llvm;

namespace LoopUnroller {

    bool Unroll(Noelle &noelle, Module &M, map<Function *, LoopInfo *> LI_map, int count);

}
