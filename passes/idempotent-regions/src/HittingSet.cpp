#include "Configurations.hpp"
#include "HittingSet.hpp"

using namespace IdempotentRegion;

CutsTy &HittingSet::run(IdempotentPathsTy &IdempotentPaths) {
  errs() << "Running HittingSet\n";

  return Cuts;
}
