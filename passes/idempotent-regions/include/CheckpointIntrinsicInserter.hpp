#pragma once

#include "Configurations.hpp"
#include "IdempotentRegionAnalysis.hpp"
#include "llvm/IR/Module.h"

class CheckpointIntrinsicInserter {
 private:
  llvm::Module &M;
  IdempotentRegionAnalysis::CheckpointLocationsMapTy &CPLMap;

 public:
  CheckpointIntrinsicInserter(
      Module &M, IdempotentRegionAnalysis::CheckpointLocationsMapTy &CPLMap)
      : M(M), CPLMap(CPLMap) {}

  void run();
};
