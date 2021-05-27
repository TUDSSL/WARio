#include "Configurations.hpp"
#include "IdempotentPathAnalysis.hpp"

using namespace IdempotentRegion;

IdempotentPathsTy &IdempotentPathAnalysis::run(
    Noelle &N, Module &M, ReadWritePairsTy &ReadWritePairs) {
  errs() << "Running IdempotentPathAnalysis on: " << M.getName() << "\n";

  return IdempotentPaths;
}
