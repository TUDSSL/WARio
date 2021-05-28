#include "Configurations.hpp"
#include "WarAnalysis.hpp"

using namespace IdempotentRegion;

/*
 * Create a map with WAR and RAW dependencies for the instructiond in
 * function F.
 * TODO: Maybe use getdependencies?
 */
void WarAnalysis::collectInstructionDependencies(
    Noelle &N, Function &F, WarAnalysis::InstructionDependencies &D) {
  auto FDG = N.getFunctionDependenceGraph(&F);

  list<Value *> war_deps;
  list<Value *> raw_deps;

  auto iterDep = [&](Value *src, DGEdge<Value> *dependence) -> bool {
    if (dependence == nullptr) return false;
    if (src == nullptr) return false;

    switch (dependence->dataDependenceType()) {
      case DG_DATA_WAR:
        dbg() << "             needs [WAR]";
        dbg() << "  " << *src << "\n";
        war_deps.push_back(src);
        break;
      case DG_DATA_RAW:
        /*
         * RAW dependencies are used to protect later WAR dependencies and to
         * remove the need for a cut. This can only be the case if it MUST
         * write.
         */
        if (dependence->isMustDependence()) {
          // TODO the Write must also dominate the read!!
          dbg() << "             needs [RAW]";
          dbg() << "  " << *src << "\n";
          raw_deps.push_back(src);
        }
        break;
      case DG_DATA_WAW:
        dbg() << "             needs [WAW]";
        dbg() << "  " << *src << "\n";
        break;
      case DG_DATA_NONE:
        break;
      default:
        dbg() << "             needs [UNKNOWN]";
    }
    return false;
  };

  /*
   * Iterate over all instructions in the function.
   */
  for (auto &I : instructions(&F)) {
    dbg() << "Instruction" << I << " depends on:\n";

    FDG->iterateOverDependencesTo(&I, false, true, false, iterDep);
    if (war_deps.size() > 0) D.addWar(&I, war_deps);
    if (raw_deps.size() > 0) D.addRaw(&I, raw_deps);

    war_deps.clear();
    raw_deps.clear();
  }
}

bool WarAnalysis::forcesCut(Instruction &I) {
  if (const LoadInst *L = dyn_cast<LoadInst>(&I)) return L->isVolatile();
  if (const StoreInst *S = dyn_cast<StoreInst>(&I)) return S->isVolatile();
  if (const CallInst *CI = dyn_cast<CallInst>(&I)) return !(CI->isTailCall());
  return (isa<InvokeInst>(I) || isa<VAArgInst>(&I) || isa<FenceInst>(&I) ||
          isa<AtomicCmpXchgInst>(&I) || isa<AtomicRMWInst>(&I));
}

void WarAnalysis::getForcedCuts(Noelle &N, Function &F, CutsTy &ForcedCuts) {
  /*
   * Iterate over all instructions in the function.
   */
  for (auto &I : instructions(&F)) {
    if (forcesCut(I)) {
      dbg() << "Adding forced cut: " << I << "\n";
      ForcedCuts.insert(&I);
    }
  }
}

/*
 * Remove Instruction dependencies that have a forced cut inbetween them.
 * i.e., for a WAR <read,write>, if the cut dominates the write but not the
 * read.
 */
void WarAnalysis::removeCutDependencies(Noelle &N, Function &F, InstructionDependencies &D,
                                        CutsTy &ForcedCuts) {
  /*
   * Get dominator information
   */
  auto Dom = N.getDominators(&F)->DT;

  /*
   * Iterate trough all the forced cuts
   */
  list<Instruction *> RemoveWarList;

  for (auto &war_kv : D.WarDepMap) {
    auto write = war_kv.first;
    auto reads = war_kv.second;

    list<Value *> RemoveReadList; // reads that need to be removed
    for (const auto &cut : ForcedCuts) {
      if (Dom.dominates(cut, write)) { // if the cut dominates the write
        for (const auto &read : reads) {
          auto read_inst = cast<Instruction>(read);
          if (!Dom.dominates(cut, read_inst)) { // but not the read
            dbg() << "Removing WAR read: " << *write << " read: " << *read_inst << " - was cut by: " << *cut << "\n";
            RemoveReadList.push_back(read); // remove the WAR
          }
        }
      }
    }

    /*
     * Remove the already resolved WARs
     */
    for (auto &r : RemoveReadList) {
      reads.remove(r);
    }

    /*
     * Mark the WAR for removal if all the reads are resolved by forced cuts
     */
    if (reads.size() == 0) {
      dbg() << "Removing WAR: " << *write << " - all reads cut\n";
      RemoveWarList.push_back(write);
    }
  }

  /*
   * Remove all the WARs with an empty read list
   * All the WARs where resolved for these by the forced cuts
   */
  for (auto &r : RemoveWarList) {
    D.WarDepMap.erase(r);
  }
}

/*
 * Search in reverse
 * From To -> From
 */

bool WarAnalysis::hasUncutPath(Noelle &N, Function &F, CutsTy &ForcedCuts, Instruction *From, Instruction *To) {
  auto DT = N.getDominators(&F)->DT;

  auto FBB = From->getParent();
  auto TBB = To->getParent();

  const BasicBlock::iterator FromIt(From);
  const BasicBlock::iterator ToIt(To);

  dbg() << "Checking Uncut Path from: " << *From << " to: " << *To << "\n";
  dbg() << "From BB: " << *FBB << "TO BB: " << *TBB << "\n";

  vector<BasicBlock *> WorkList;
  unordered_set<BasicBlock *> VisitedBB;

  WorkList.push_back(TBB);
  while (WorkList.size()) {
    /*
     * Get the last BasicBlock from the WorkList
     */
    auto BB = WorkList.back();
    WorkList.pop_back();

    dbg() << "Visiting BB: " << *BB << "\n";

    auto E = BB->begin();
    auto Cursor = ((BB == TBB) && VisitedBB.find(TBB) == VisitedBB.end())
                      ? ToIt
                      : BB->end();

    if (Cursor == BB->end())
      dbg() << "Seach start: " << "Block END" << "\n";
    else
      dbg() << "Seach start: " << *Cursor << "\n";
    dbg() << "Search end E: " << *E << "\n";

    /*
     * The Cursor initially points to either the To instruction of the BB->end()
     * Both do not need to be checked.
     * If the Cursor is already at the last instruction, there is nothing
     * to check
     */
    bool IsCut = false;
    while (Cursor-- != E) {
      auto CursorInst = cast<Instruction>(Cursor);
      dbg() << "Cursor at: " << *CursorInst << "\n";
      if (ForcedCuts.find(CursorInst) != ForcedCuts.end()) {
        dbg() << "WAR cut by: " << *CursorInst << "\n";
        IsCut = true;
        break;
      } else if (CursorInst == From) {
        dbg() << "Found a path\n";
        return true;
      }
    }

    if (!IsCut) {
      // Search in the predecessor BasicBlocks if we did not already visit them.
      for (auto P : predecessors(BB))
        if (VisitedBB.insert(P).second) WorkList.push_back(P);
    }
  }

  return false;
}

ReadWritePairsTy &WarAnalysis::run(Noelle &N, Module &M) {
  dbg() << "Running WarAnalysis on: " << M.getName() << "\n";

  /*
   * Fetch the entry point.
   */
  auto fm = N.getFunctionsManager();
  auto pcf = fm->getProgramCallGraph();

  /*
   * Iterate over all functions
   */
  for (auto node : pcf->getFunctionNodes()) {
    auto F = node->getFunction();
    assert((F != nullptr) && "F = nullptr");

    dbg() << "Function: " << F->getName() << "\n";
    if (F->getName() != "main") continue;

    /*
     * Collect all the WAR violations
     */
    InstructionDependencies D;
    collectInstructionDependencies(N, *F, D);

    for (auto war : D.WarDepMap) {
      dbg() << "WAR: " << *war.first << "\n";
      for (auto r : war.second) {
        dbg() << "  needs: " << *r << "\n";
      }
    }

    /*
     * Move the WARs to a Vector
     */
    ReadWritePairsTy Wars;
    for (auto war : D.WarDepMap)
      for (auto r : war.second)
        Wars.push_back(ReadWritePairTy(cast<Instruction>(r), war.first));

    /*
     * Collect forced cut locations
     */
    CutsTy ForcedCuts;
    getForcedCuts(N, *F, ForcedCuts);

    /*
     * Go trough all the paths backwards from the
     * WAR Write to the Read. We do a DFS, when we reach a intstruction
     * in the ForcedCuts we stop searching.
     * If we manage to reach the Read, we need to solve the WAR.
     * If we don't reach the Read, all the WARs are already resolved by forced
     * cuts.
     *
     * We are done searching if we reach the WAR read, the original start
     * possition (write), or if we reach the beginning of the function.
     */
    ReadWritePairsTy UncutWars;
    for (auto RW : Wars)
      if (hasUncutPath(N, *F, ForcedCuts, RW.first, RW.second))
        UncutWars.push_back(RW);

    dbg() << "UncutWars:\n";
    for (auto W : UncutWars)
      dbg() << "  [WAR] read: " << *W.first << " write: " << *W.second << "\n";

    /*
     * Checked by the test framework
     */
    dbg() << "$WAR_COUNT: " << Wars.size() << "\n";
    dbg() << "$UNCUT_WAR_COUNT: " << UncutWars.size() << "\n";

    /*
     * Removing the cut dependencies like this might not be needed.
     * We can also do this while we create the paths.
     * We can start with a superset of all the WAR violations and make paths
     * that also reduces them down to only "uncut" ones.
     */
#if 0
    CutsTy ForcedCuts;
    getForcedCuts(N, *F, ForcedCuts);

    removeCutDependencies(N, *F, D, ForcedCuts);

    dbg() << "Updated WARs:\n";
    for (auto war : D.WarDepMap) {
      dbg() << "WAR: " << *war.first << "\n";
      for (auto r : war.second) {
        dbg() << "  needs: " << *r << "\n";
      }
    }
#endif

#if 0
    /*
     * Collect the Paths
     */
    auto DT = N.getDominators(F)->DT;
    IdempotentPathsTy IdempotentPaths;

    for (auto war : D.WarDepMap) {
      auto Store = war.first;
      auto Loads = war.second;

      for (auto LoadVal : Loads) {
        auto Load = cast<Instruction>(LoadVal);
        BasicBlock::iterator LoadIt(Load);

        // Increase the size and get the pointer to the last (new) one
        IdempotentPaths.resize(IdempotentPaths.size()+1);
        auto Path = IdempotentPaths.back();

        // The WAR sore is the first Instruction in the path
        Path.push_back(Store);

        // The rest of the path is other stores that dominate the WAR store
        // but do not dominate the load.
        BasicBlock::iterator Cursor(Store);
        auto SBB = Store->getParent();
        auto LBB = Load->getParent();

        if (SBB == LBB && DT.dominates(Load, Store)) {
          while (--Cursor != LoadIt) {
            if (isa<StoreInst>(Cursor)) {
              Path.push_back(cast<Instruction>(Cursor));
            }
          }
          dbg() << "Local: " << *Store << " has path:\n";
          for (auto n : Path) {
            dbg() << "  " << *n << "\n";
          }

          continue;
        }

        // Non-local case
        auto BB = SBB;

        auto DTN = DT.getNode(BB);
        auto LoadDTN = DT.getNode(LBB);
        while (!DT.dominates(DTN, LoadDTN)) {
          dbg() << "Scanning dominating block: " << *BB << "\n";
          auto E = BB->begin();
          while (Cursor != E) {
            if (isa<StoreInst>(--Cursor)) {
              Path.push_back(cast<Instruction>(Cursor));
            }
          }

          // Move the Cursor to the end of the imediate Dominator of BB
          DTN = DTN->getIDom();
          if (DTN == nullptr) {
            break;
          }
          BB = DTN->getBlock();
          Cursor = BB->end();
        }
        dbg() << "Non-Local: " << *Store << " has path:\n";
        for (auto n : Path) {
          dbg() << "  " << *n << "\n";
        }
      }
    }
#endif
  }
  return WarViolations;
}