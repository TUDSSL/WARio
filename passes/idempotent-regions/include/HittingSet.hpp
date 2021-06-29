#pragma once

#include "IdempotentRegion.hpp"
#include "PlacementCost.hpp"

class HittingSet {
 protected:
   typedef map<Instruction *, unsigned int> HitCountMapTy;

   const IdempotentRegion::PathsTy &IdempotentPaths;
   IdempotentRegion::CutsTy Cuts;

   PlacementCost &PC;

   bool verify(IdempotentRegion::CutsTy &Solution);
   bool Valid = false;

   void removeCutPaths(IdempotentRegion::PathsTy &Paths, Instruction *Cut);

   HitCountMapTy HitCountMap;
   void computeHitCountMap(IdempotentRegion::PathsTy &Paths);

 public:
  bool isValid() { return Valid; }

  HittingSet(const IdempotentRegion::PathsTy &IdempotentPaths, PlacementCost &PlacementCost)
      : IdempotentPaths(IdempotentPaths), PC(PlacementCost) {}

  IdempotentRegion::CutsTy &run(bool PrintDebug = true);
};
