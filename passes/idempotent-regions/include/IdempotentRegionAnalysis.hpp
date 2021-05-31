#pragma once

#include "Configurations.hpp"
#include "IdempotentRegion.hpp"
#include "HittingSet.hpp"

using namespace llvm;

class IdempotentRegionAnalysis {
  public:
    typedef IdempotentRegion::CutsTy CheckpointLocationsTy;
    typedef map<Function *, IdempotentRegion::CutsTy> CheckpointLocationsMapTy;

  private:
    CheckpointLocationsMapTy CheckpointLocationsMap;

  public:
    void run(Noelle &N, Module &M);

    CheckpointLocationsTy *getCheckpointLocations(Function *F) {
      if (CheckpointLocationsMap.find(F) != CheckpointLocationsMap.end())
        return &CheckpointLocationsMap[F];
    }
};
