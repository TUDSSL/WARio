#pragma once

#include "IdempotentRegion.hpp"

class WarAnalysis {
 private:
  typedef map<Instruction *, list<Value *>> InstructionDependencyMapTy;

  IdempotentRegion::ReadWritePairsTy WarViolations;

  struct InstructionDependencies {
    InstructionDependencyMapTy WarDepMap;
    InstructionDependencyMapTy RawDepMap;

    void addWar(Instruction *inst, list<Value *> &deps) { WarDepMap[inst] = deps; }

    void addRaw(Instruction *inst, list<Value *> &deps) { RawDepMap[inst] = deps; }
  };

	void collectInstructionDependencies(Noelle &N, Function &F, InstructionDependencies &D);
  bool forcesCut(Instruction &I);
  void getForcedCuts(Noelle &N, Function &F, IdempotentRegion::CutsTy &ForcedCuts);
  void removeCutDependencies(Noelle &N, Function &F, InstructionDependencies &D, IdempotentRegion::CutsTy &ForcedCuts);
  bool hasUncutPath(Noelle &N, Function &F, IdempotentRegion::CutsTy &ForcedCuts, Instruction *From, Instruction *To);

 public:
  IdempotentRegion::ReadWritePairsTy &run(Noelle &N, Module &M);
};
