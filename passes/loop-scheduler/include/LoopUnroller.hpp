#pragma once

#include "Configurations.hpp"
#include <ostream>

using namespace llvm;

namespace LoopUnroller {
    struct LoopCandidateInfo {
      int WarCount;
      LoopDependenceInfo *LoopDependenceInfo;
    };

    typedef std::vector<LoopCandidateInfo> LoopUnrollCandidatesTy;

    bool IsCandidate(LoopDependenceInfo *LDI, LoopCandidateInfo &LCI);
    LoopUnrollCandidatesTy CollectUnrollCandidates(Noelle &N, Module &M);
    bool UnrollLoop(LoopStructure &LS, LoopInfo &LI, int count);

    void MarkForLoopWriteScheduling(LoopStructure &LS);
}
