#pragma once

#include "Configurations.hpp"
#include <unordered_set>

using namespace llvm;

namespace IdempotentRegion {
  typedef std::pair<Instruction *, Instruction *> ReadWritePairTy;
  typedef std::vector<Instruction *> IdempotentPathTy;

  typedef std::vector<ReadWritePairTy> ReadWritePairsTy;
  typedef std::vector<IdempotentPathTy> IdempotentPathsTy;

  typedef std::unordered_set<Instruction *> CutsTy;
}
