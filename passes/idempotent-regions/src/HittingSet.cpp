#include "Configurations.hpp"
#include "HittingSet.hpp"

using namespace IdempotentRegion;

CutsTy &HittingSet::run(PathsTy &IdempotentPaths) {
  errs() << "Running HittingSet\n";

  return Cuts;
}
