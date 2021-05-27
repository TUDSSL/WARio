#pragma once

#include "Configurations.hpp"
#include "IdempotentRegion.hpp"
#include "HittingSet.hpp"

using namespace llvm;

class IdempotentRegionAnalysis {
  private:
    HittingSet HS;

  public:
    IdempotentRegion::CutsTy &run(Noelle &N, Module &M);
};
