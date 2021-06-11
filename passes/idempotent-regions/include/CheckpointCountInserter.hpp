#pragma once

#include "Configurations.hpp"
#include "IdempotentRegionAnalysis.hpp"
#include "llvm/IR/Module.h"

class CheckpointCountInserter {
 private:
  llvm::Module &M;
  IdempotentRegionAnalysis::CheckpointLocationsMapTy &CPLMap;

 public:
  CheckpointCountInserter(
      Module &M, IdempotentRegionAnalysis::CheckpointLocationsMapTy &CPLMap)
      : M(M), CPLMap(CPLMap) {}

  void run();
};
