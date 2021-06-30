#pragma once

#include "Configurations.hpp"
#include "IdempotentRegion.hpp"
#include "HittingSet.hpp"

using namespace llvm;

class IdempotentRegionAnalysis {
  public:
    typedef IdempotentRegion::CutsTy CheckpointLocationsTy;
    typedef map<Function *, IdempotentRegion::CutsTy> CheckpointLocationsMapTy;

    typedef map<Function *, LoopInfo *> LoopInfoMapTy;

  private:
    set<string> ExcludeF; // Funtions to exclude from the analysis
    CheckpointLocationsMapTy CheckpointLocationsMap;

  public:
    IdempotentRegionAnalysis(set<string> ExcludeFunctions = {}) {
      ExcludeF= ExcludeFunctions;
    }

    void run(Noelle &N, Module &M, LoopInfoMapTy &LIM);

    CheckpointLocationsTy *getCheckpointLocations(Function *F) {
      if (CheckpointLocationsMap.find(F) != CheckpointLocationsMap.end())
        return &CheckpointLocationsMap[F];
    }

    CheckpointLocationsMapTy &getCheckpointLocationsMap() {
      return CheckpointLocationsMap;
    }
};
