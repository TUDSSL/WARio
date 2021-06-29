#pragma once

#include "Configurations.hpp"
#include "IdempotentRegion.hpp"

class PlacementCost {
 public:
  typedef struct {
    // Constant entries
    uint16_t LoopDepth = 0;
    bool IsWarStore = false;
    bool IsSubLoopPreheader = false;
    // Changing entries
    uint16_t UnIntersectedPaths = 0;
    uint16_t IntersectedPaths = 0;
  } CostFactorsTy;

  typedef uint64_t CostTy;

 private:
  Noelle &N;
  Function &F;
  LoopInfo *LI;

  map<const Instruction *, CostFactorsTy> CostMap;

  bool isSubLoopPreheader(const BasicBlock *BB) {
    auto L = LI->getLoopFor(BB);
    if (L) {
      for (const auto &I : *L) {
        if (BB == I->getLoopPreheader()) {
          return true;
        }
      }
    }
    return false;
  }

 public:
  PlacementCost(Noelle &N, Function &F, LoopInfo *LI) : N(N), F(F), LI(LI) {}

  CostTy convertCost(CostFactorsTy &CF) {
    if (UnitPlacementCost) return 1;

    // TODO: Add UnintersectedPaths and IntersectedPaths
    CostTy C = 0;
    C |= CF.LoopDepth << 2;
    C |= (CF.IsWarStore ? 0 : 1) << 1;
    C |= (CF.IsSubLoopPreheader ? 0 : 1) << 0;

    return C + 1;
  }

  void add(const Instruction *I, CostFactorsTy CostFactors) {
    CostMap[I] = CostFactors;
  }

  CostFactorsTy costFactors(const Instruction *I) {
    CostFactorsTy CF;;

    if (CostMap.find(I) != CostMap.end())
      CF = CostMap[I];

    return CF;
  }

  CostTy cost(const Instruction *I, bool IsWarStore = false,
              CostTy UnIntersectedPaths = 0, CostTy IntersectedPaths = 0) {
    if (CostMap.find(I) == CostMap.end()) {
      // Compute the cost
      CostFactorsTy CF;

      auto *BB = I->getParent();
      if (LI != nullptr) {
        CF.LoopDepth = LI->getLoopDepth(BB);
        CF.IsSubLoopPreheader = isSubLoopPreheader(BB);
      }

      CostMap[I] = CF;
    }

    auto &CF = CostMap[I];
    CF.IsWarStore = IsWarStore;
    CF.UnIntersectedPaths = UnIntersectedPaths;
    CF.IntersectedPaths = IntersectedPaths;

    return convertCost(CF);
  }

  CostTy cost(IdempotentRegion::CutsTy &Cuts) {
    CostTy TotalCost = 0;
    for (const auto &I : Cuts) {
      TotalCost += cost(I);
    }
    return TotalCost;
  }
};

static inline llvm::raw_ostream &operator<<(llvm::raw_ostream &os, const PlacementCost::CostFactorsTy &CF) {
  os << "LoopDepth: " << CF.LoopDepth << ", "
     << "IsWarStore: " << (CF.IsWarStore ? "true" : "false") << ", "
     << "IsSubLoopPreheader: " << (CF.IsSubLoopPreheader ? "true" : "false") << ", "
     << "UnIntersectedPaths: " << CF.UnIntersectedPaths << ", "
     << "IntersectedPaths: " << CF.IntersectedPaths;
  return os;
}

