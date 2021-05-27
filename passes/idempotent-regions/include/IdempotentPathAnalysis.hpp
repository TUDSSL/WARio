#pragma once

#include "IdempotentRegion.hpp"

class IdempotentPathAnalysis {
 private:
   IdempotentRegion::IdempotentPathsTy IdempotentPaths;

 public:
  IdempotentRegion::IdempotentPathsTy &run(
      Noelle &N, Module &M, IdempotentRegion::ReadWritePairsTy &ReadWritePairs);
};
