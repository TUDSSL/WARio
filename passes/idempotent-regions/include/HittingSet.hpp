#pragma once

#include "IdempotentRegion.hpp"
#include "PlacementCost.hpp"

class HittingSet {
 protected:
   typedef map<Instruction *, unsigned int> HitCountMapTy;

   IdempotentRegion::PathsTy &IdempotentPaths;
   IdempotentRegion::CutsTy Cuts;

   PlacementCost PC;

   bool verify(IdempotentRegion::CutsTy &Solution);
   bool Valid = false;

   void removeCutPaths(IdempotentRegion::PathsTy &Paths, Instruction *Cut);

   HitCountMapTy HitCountMap;
   void computeHitCountMap(IdempotentRegion::PathsTy &Paths);

 public:
  bool isValid() { return Valid; }

  HittingSet(IdempotentRegion::PathsTy &IdempotentPaths)
      : IdempotentPaths(IdempotentPaths) {}

  IdempotentRegion::CutsTy &run(bool PrintDebug = true);
};
