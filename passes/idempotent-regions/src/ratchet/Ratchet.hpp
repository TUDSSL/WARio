#pragma once


//===-------- MemoryIdempotenceAnalysis.h -----------------------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file contains the interface for querying (no updating) the idempotent
// region information at the LLVM IR level in terms of the "cuts" that define
// them.  See "Static Analysis and Compiler Design for Idempotent Processing" in
// PLDI '12.
//
// This interface is greatly simplified by the use of the pimpl idiom (*Impl)
// which hides the implementation details.
//
//===----------------------------------------------------------------------===//

#include "llvm/IR/Function.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/ADT/SmallPtrSet.h"

#include "IdempotentRegion.hpp"

namespace llvm {

#if 0
class MemoryIdempotenceAnalysisImpl;

class MemoryIdempotenceAnalysis {
  typedef DenseMap<const Instruction *, SmallPtrSet<Instruction *, 4>> AntidependenceCutMapTy;
  typedef SmallPtrSet<Instruction *, 16> CutSet;

 public:
  static char ID;

  virtual void getAnalysisUsage(AnalysisUsage &AU) const;
  virtual void releaseMemory();
  virtual void print(raw_ostream &OS, const Module *M = 0) const;

  virtual bool doInitialization(Module &M);
  virtual bool runOnFunction(Function &F);
  virtual bool doFinalization(Module &M);

  // Iteration support (const only).
  typedef CutSet::const_iterator const_iterator;
  const_iterator begin()  const { return CutSet_->begin(); }
  const_iterator end()    const { return CutSet_->end(); }
  bool           empty()  const { return CutSet_->empty(); }

  AntidependenceCutMapTy *CutMap_;

 private:
  friend class MemoryIdempotenceAnalysisImpl;

  // Our key output data structure.
  CutSet *CutSet_;

  // Hide implementation details.
  MemoryIdempotenceAnalysisImpl *Impl;
};
#endif

namespace {
  typedef std::pair<Instruction *, Instruction *> AntidependencePairTy;
  typedef SmallVector<Instruction *, 16> AntidependencePathTy;
}

namespace {
  class CandidateInfo {
   public:
    typedef SmallPtrSet<const AntidependencePathTy *, 4> UnintersectedPaths;

    // Constructor.
    CandidateInfo(Instruction *Candidate,
                  unsigned LoopDepth,
                  bool IsSubloopPreheader);

    // Get the candidate instruction.
    Instruction *getCandidate() { return Candidate_; }
    const Instruction *getCandidate() const { return Candidate_; }

    // Iteration support (const only).
    typedef UnintersectedPaths::const_iterator const_iterator;
    const_iterator begin()  const { return UnintersectedPaths_.begin(); }
    const_iterator end()    const { return UnintersectedPaths_.end(); }
    unsigned       size()   const { return UnintersectedPaths_.size(); }
    bool           empty()  const { return UnintersectedPaths_.empty(); }

    // Add Path to the set of unintersected paths and update priority.
    void add(const AntidependencePathTy &Path);

    // Remove Path from the set of unintersected paths and update priority.
    void remove(const AntidependencePathTy &Path);

    // Debugging support.
    void print(raw_ostream &OS) const;

    // Priority comparison function.
    static bool compare(CandidateInfo *L, CandidateInfo *R) {
      return (L->Priority_ < R->Priority_);
    }

   private:
    Instruction *Candidate_;
    UnintersectedPaths UnintersectedPaths_;

    union {
      // Higher priority is better.
      struct {
        // From least important to most important (little endian):
        signed IntersectedPaths:16;    // prefer more already-intersected paths
        signed IsSubloopPreheader:8;   // prefer preheaders
        signed IsAntidependentStore:8; // prefer antidependent stores
        signed UnintersectedPaths:16;  // prefer more unintersected paths
        signed LoopDepth:16;           // (inverted) prefer outer loops
      } PriorityElements_;
      uint64_t Priority_;
    };

    // Do not implement.
    CandidateInfo();
  };

  typedef std::vector<CandidateInfo *> WorklistTy;
} // end anonymous namespace

class MemoryIdempotenceAnalysisImpl {
 public:
  // Constructor.
  MemoryIdempotenceAnalysisImpl(bool CutFunctionCalls=false) : CutFunctionCalls(CutFunctionCalls) {}

  // Forwarded function implementations.
  void releaseMemory();
  void print(raw_ostream &OS, const Module *M = 0) const;
  bool runOnFunction(Function &F);

  typedef DenseMap<const Instruction *, SmallPtrSet<Instruction *, 4>> AntidependenceCutMapTy;
  typedef SmallPtrSet<Instruction *, 16> CutSet;


 private:
  //friend class MemoryIdempotenceAnalysis;
  //MemoryIdempotenceAnalysis *MIA_;

  // Final output structure.
  CutSet CutSet_;
  AntidependenceCutMapTy CutMap_;

  bool CutFunctionCalls = false;

  // Intermediary data structure 1.
  typedef SmallVector<AntidependencePairTy, 16> AntidependencePairs;
  AntidependencePairs AntidependencePairs_;

  // Intermediary data structure 2.
  typedef SmallVector<AntidependencePathTy, 16> AntidependencePaths;
  AntidependencePaths AntidependencePaths_;

  // Other things we use.
#if RATCHED_ORIG
  PredIteratorCache PredCache_;
#endif
  Module *M_;
  Function *F_;
  AAResults *AA_;
  DominatorTree *DT_;
  LoopInfo *LI_;

  MemoryLocation *ML_;

  // Helper functions.
  void forceCut(BasicBlock::iterator I);
  void findAntidependencePairs(Instruction *Write);
  bool scanForAliasingLoad(BasicBlock::iterator I,
                           BasicBlock::iterator E,
                           StoreInst *Store);
  void computeAntidependencePaths();
  void computeHittingSet();
  void processRedundantCandidate(CandidateInfo *RedundantInfo,
                                 WorklistTy *Worklist,
                                 const AntidependencePathTy &Path);

 public:
  CutSet &run(Module &M, Function &F, AAResults &AA, DominatorTree &DT,
           LoopInfo &LI);
};


} // End llvm namespace

