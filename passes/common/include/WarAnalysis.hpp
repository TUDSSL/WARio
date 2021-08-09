#pragma once

#include "IdempotentRegion.hpp"
#include "Configurations.hpp"

class WarAnalysis {
 public:
  struct Dependence {
    Value *Value;
    bool IsMust;

    bool operator==(const Dependence &rhs) const {
      return Value == rhs.Value;
    }
    bool operator==(const class Value *rhs) const {
      return Value == rhs;
    }
  };

  typedef map<Instruction *, list<Dependence>> InstructionDependencyMapTy;

 private:
  Noelle &N;
  Function &F;

  InstructionDependencyMapTy WarDepMap;
  InstructionDependencyMapTy RawDepMap;

  IdempotentRegion::ReadWritePairsTy AllWars;
  IdempotentRegion::ReadWritePairsTy UncutWars;
  IdempotentRegion::ReadWritePairsTy PrecutWars;

  // A map from a WAR to the resulting Path
  IdempotentRegion::WarPathMapTy WarPathMap;

  IdempotentRegion::CutsTy ForcedCuts;
  IdempotentRegion::PathsTy Paths;

  bool forcesCut(Instruction &I);
  bool hasUncutPath(IdempotentRegion::CutsTy &Cuts, Instruction *From, Instruction *To);

  void collectInstructionDependencies();
  void collectForcedCuts();
  void collectUncutWars();
  void collectDominatingPaths();

  void collectWarDependencies();

 public:
  WarAnalysis(Noelle &N, Function &F) : N(N), F(F) {}
  IdempotentRegion::PathsTy &run();

  /*
   * Getters
   */
  IdempotentRegion::ReadWritePairsTy &getUncutWars() { return UncutWars; }
  IdempotentRegion::CutsTy &getForcedCuts() { return ForcedCuts; }
  IdempotentRegion::PathsTy &getPaths() { return Paths; }

  const IdempotentRegion::WarPathMapTy &getWarPathMap() { return WarPathMap; }
  const InstructionDependencyMapTy &getRawDepMap() { return RawDepMap; }
  const InstructionDependencyMapTy &getWarDepMap() { return WarDepMap; }
};

