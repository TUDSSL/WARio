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

void WarAnalysis::findPaths(Noelle &N, Function &F, ReadWritePairsTy &Wars, IdempotentPathsTy &Paths) {

  auto DT = N.getDominators(&F)->DT;

  for (auto RW : Wars) {
    // Get a reference to the Path vector for this WAR
    Paths.resize(Paths.size()+1);
    auto &Path = Paths.back();

    auto Load = RW.first;
    auto Store = RW.second;

    auto LoadBB = Load->getParent();
    auto StoreBB = Store->getParent();

    auto BB = StoreBB;
    auto DTN = DT.getNode(BB);
    BasicBlock::iterator Cursor(Store);

    // The Path starts with the WAR Store
    Path.push_back(Store);

    do {
      dbg() << "Visiting Block: " << *BB << "\n";
      while (Cursor-- != BB->begin()) {
        dbg() << "Cursor: " << *Cursor << "\n";
        if (auto I = dyn_cast<StoreInst>(Cursor)){
          Path.push_back(I);
        } else if (cast<Instruction>(Cursor) == Load) {
          break;
        }
      }
      // Move on to the Immediate Dominator if it exists, otherwise we are done
      DTN = DTN->getIDom();
      if (DTN == nullptr) break;

      // Setup for iterating trough the next BB
      BB = DTN->getBlock();
      Cursor = BB->end();

    } while (DT.dominates(LoadBB, BB)); // Every node dominates itself

    dbg() << "WAR Path for: " << *Store << ":\n";
    for (auto P : Path) {
      dbg() << "  " << *P << "\n";
    }
  }
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
    if (F->getInstructionCount() == 0) continue;

    /*
     * Collect all the WAR violations
     */
    InstructionDependencies D;
    collectInstructionDependencies(N, *F, D);

    for (auto war : D.WarDepMap) {
      dbg() << "WAR: " << *war.first << "\n";
      for (auto r : war.second)
        dbg() << "  needs: " << *r << "\n";
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
    for (auto &W : UncutWars)
      dbg() << "  [WAR] read: " << *W.first << " write: " << *W.second << "\n";

    IdempotentPathsTy Paths;
    findPaths(N, *F, UncutWars, Paths);

    dbg() << "WAR Paths:\n";
    for (auto &P : Paths) {
      dbg() << "  Path: ";
      for (auto W : P) {
        dbg() << "  " << *W << "\n";
      }
      dbg() << "\n";
    }

    /*
     * Checked by the test framework
     */
    dbg() << "$WAR_COUNT: " << Wars.size() << "\n";
    dbg() << "$UNCUT_WAR_COUNT: " << UncutWars.size() << "\n";
    dbg() << "$PATH_COUNT: " << Paths.size() << "\n";
    for (auto &P : Paths) dbg() << "$PATH_SIZE: " << P.size() << "\n";

  }
  return WarViolations;
}
