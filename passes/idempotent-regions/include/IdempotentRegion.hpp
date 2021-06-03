#pragma once

#include <unordered_set>
#include "llvm/Support/raw_ostream.h"

#include "Configurations.hpp"

using namespace llvm;

namespace IdempotentRegion {
  typedef struct {
    Instruction *read;
    Instruction *write;
  } ReadWritePairTy;

  typedef std::vector<Instruction *> PathTy;

  typedef std::vector<ReadWritePairTy> ReadWritePairsTy;
  typedef std::vector<PathTy> PathsTy;

  typedef std::unordered_set<Instruction *> CutsTy;

}

static inline llvm::raw_ostream &operator<<(llvm::raw_ostream &os, const IdempotentRegion::ReadWritePairTy &RW) {
  os << "R:" << *RW.read << " - W:" << *RW.write;
  return os;
}

