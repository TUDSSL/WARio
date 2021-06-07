#pragma once

#include "IdempotentRegion.hpp"
#include "Configurations.hpp"
#include "WarAnalysis.hpp"

class ProtectingWriteAnalysis {
 public:
  typedef std::list<const IdempotentRegion::PathTy *> ConditionalPathsTy;

 private:
  // Cuts that introduce a Path
  typedef map<Instruction *, list<const IdempotentRegion::PathTy *>>
      ConditionalPathsMapTy;

  Noelle &N;
  Function &F;
  WarAnalysis &WA;

  typedef map<Instruction *, list<Value *>> InstructionDependencyMapTy;

  ConditionalPathsMapTy ConditionalPathsMap;
  ConditionalPathsTy ConditionalPaths;

  map<Instruction *, Instruction *> ReadPotentialProtectingWriteMap;
  map<Instruction *, IdempotentRegion::ReadWritePairTy> PotentialProtectingWriteWarMap;

  list<Instruction *> PotentialProtectingWrites;


  // Return the protecting write, nullptr otherwise
  //Instruction *getProtectingWrite(IdempotentRegion::ReadWritePairTy &WAR);

  IdempotentRegion::PathTy collectAllPotentialCutLocations(Instruction *From, Instruction *To, const IdempotentRegion::CutsTy &Cuts);

  void collectPotentialProtectingWrites();
  // Get all instructions that would introduce a Path where a checkpoint needs
  // to be placed.
  void collectProtectedPaths();


 public:
  ProtectingWriteAnalysis(Noelle &N, Function &F, WarAnalysis &WA)
      : N(N), F(F), WA(WA) {}

  ConditionalPathsTy &run();

};
