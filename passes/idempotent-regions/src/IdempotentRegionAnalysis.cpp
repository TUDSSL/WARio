#include "IdempotentRegion.hpp"
#include "WarAnalysis.hpp"
#include "IdempotentPathAnalysis.hpp"
#include "HittingSet.hpp"

#include "IdempotentRegionAnalysis.hpp"

using namespace IdempotentRegion;

/*
 * - Collect Pairs
 * - Get Paths from Pars
 * - Compute Hitting set
 */
CutsTy &IdempotentRegionAnalysis::run(Noelle &N, Module &M) {
  WarAnalysis WA;
  auto ReadWritePairs = WA.run(N, M);

  IdempotentPathAnalysis IPA;
  auto IdempotentPaths = IPA.run(N, M, ReadWritePairs);

  auto Cuts = HS.run(IdempotentPaths);

  return Cuts;
}
