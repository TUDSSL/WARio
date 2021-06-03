#pragma once

#include "Configurations.hpp"
#include "IdempotentRegion.hpp"

class PlacementCost {
  public:
    typedef struct {
      int something;
    } CostFactorsTy;

    typedef unsigned int CostTy;

  private:
    map<Instruction *, CostFactorsTy> CostMap;

    CostTy convertCost(CostFactorsTy &C);

  public:
   CostTy cost(const Instruction *I) {
     //if (CostMap.find(I) != CostMap.end())
     //  return convertCost(CostMap[I]);
     return 1;
   }

   CostTy cost(IdempotentRegion::CutsTy &Cuts) {
     CostTy TotalCost = 0;
     for (const auto &I : Cuts) {
        TotalCost += cost(I);
     }
     return TotalCost;
   }
};
