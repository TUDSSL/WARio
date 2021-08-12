#pragma once

#include "Configurations.hpp"
#include <ostream>

using namespace llvm;

namespace LoopUnroller {
struct LoopCandidateInfo {
  int WarCount;
  int LoopCarriedWarCount;
  LoopDependenceInfo *LoopDependenceInfo;
};

typedef std::vector<LoopCandidateInfo> LoopUnrollCandidatesTy;

bool IsCandidate(Noelle &N, LoopDependenceInfo *LDI, LoopCandidateInfo &LCI);
LoopUnrollCandidatesTy CollectUnrollCandidates(Noelle &N, Module &M);
bool UnrollLoop(LoopStructure &LS, LoopInfo &LI, int count);

void MarkForLoopWriteScheduling(LoopStructure &LS);
}  // namespace LoopUnroller
