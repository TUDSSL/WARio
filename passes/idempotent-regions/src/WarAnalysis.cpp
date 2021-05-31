#include "Configurations.hpp"
#include "Utils.hpp"
#include "WarAnalysis.hpp"

using namespace IdempotentRegion;

bool WarAnalysis::forcesCut(Instruction &I) {
  if (const LoadInst *L = dyn_cast<LoadInst>(&I)) return L->isVolatile();
  if (const StoreInst *S = dyn_cast<StoreInst>(&I)) return S->isVolatile();
  if (const CallInst *CI = dyn_cast<CallInst>(&I)) return !(CI->isTailCall());
  return (isa<InvokeInst>(I) || isa<VAArgInst>(&I) || isa<FenceInst>(&I) ||
          isa<AtomicCmpXchgInst>(&I) || isa<AtomicRMWInst>(&I));
}

/*
 * Create a map with WAR and RAW dependencies for the instructiond in
 * function F.
 * TODO: Maybe use getdependencies?
 */
void WarAnalysis::collectInstructionDependencies() {
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
    if (war_deps.size() > 0) WarDepMap[&I] = war_deps;
    if (raw_deps.size() > 0) RawDepMap[&I] = raw_deps;

    war_deps.clear();
    raw_deps.clear();
  }

  /*
   * Create a WAR vector
   */
  for (auto &kv : WarDepMap) {
    auto Write = kv.first;
    for (auto Read : kv.second) {
      AllWars.push_back(ReadWritePairTy(cast<Instruction>(Read), Write));
    }
  }
}

void WarAnalysis::collectForcedCuts() {
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
 * Search in reverse
 * From To -> From
 */

bool WarAnalysis::hasUncutPath(CutsTy &Cuts, Instruction *From, Instruction *To) {
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
      if (Cuts.find(CursorInst) != Cuts.end()) {
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

void WarAnalysis::collectUncutWars() {
  for (auto RW : AllWars) {
    if (hasUncutPath(ForcedCuts, RW.first, RW.second))
      UncutWars.push_back(RW);
    else
      PrecutWars.push_back(RW);
  }
}

void WarAnalysis::collectDominatingPaths() {

  auto DT = N.getDominators(&F)->DT;

  for (auto RW : UncutWars) {
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
  }
}

PathsTy &WarAnalysis::run() {
  dbg() << "Running WarAnalysis on function: " << F.getName() << "\n";

  /*****************************************************************************
   * Run the analysis for the function
   ****************************************************************************/
  /*
   * Collect all the WAR violations (detected by Noelle)
   */
  collectInstructionDependencies();

  /*
   * Collect the Forced cuts
   */
  collectForcedCuts();

  /*
   * Collect the Uncut WAR violations
   */
  collectUncutWars();

  /*
   * Collect the possible *dominating* Paths from a WAR read to a WAR write
   */
  collectDominatingPaths();

  /*****************************************************************************
   * Attach Metadata
   ****************************************************************************/
  // Attach metadata to pre-cut wars
  for (auto &W : PrecutWars) {
    Utils::SetInstrumentationMetadata(W.second, "idemp", "idemp_precut_war");
  }

  // Attach metadata to uncut wars
  for (auto &W : UncutWars) {
    Utils::SetInstrumentationMetadata(W.second, "idemp", "idemp_uncut_war");
  }

  // TODO: Attach metadata to paths p:cnt?

  /*****************************************************************************
   * Print debugging/testing information
   ****************************************************************************/
  /*
   * Print the WAR violations
   */
  dbg() << "\nWrite after Reads:\n";
  for (const auto &war : WarDepMap) {
    dbg() << "  WAR: " << *war.first << "\n";
    for (auto r : war.second) dbg() << "    needs: " << *r << "\n";
  }

  /*
   * Print Uncut Wars
   */
  dbg() << "\nAll Wars:\n";
  for (const auto &W : AllWars) {
    dbg() << "  [WAR] read: " << *W.first << " write: " << *W.second << "\n";
  }

  /*
   * Print the forced cut locations
   */
  dbg() << "\nForced cuts:\n";
  for (const auto &cut : ForcedCuts) {
    dbg() << *cut << "\n";
  }

  /*
   * Print Precut Wars
   */
  dbg() << "\nPrecut Wars:\n";
  for (const auto &W : PrecutWars) {
    dbg() << "  [WAR] read: " << *W.first << " write: " << *W.second << "\n";
  }

  /*
   * Print Uncut Wars
   */
  dbg() << "\nUncut Wars:\n";
  for (const auto &W : UncutWars) {
    dbg() << "  [WAR] read: " << *W.first << " write: " << *W.second << "\n";
  }

  /*
   * WAR Paths
   */
  dbg() << "\nWar Paths:\n";
  for (const auto &P : Paths) {
    dbg() << "  Path: ";
    for (const auto &W : P) dbg() << "  " << *W << "\n";
    dbg() << "\n";
  }

  /*
   * Automated testing output
   */
  dbg() << "$WAR_COUNT: " << AllWars.size() << "\n";
  dbg() << "$UNCUT_WAR_COUNT: " << UncutWars.size() << "\n";
  dbg() << "$PATH_COUNT: " << Paths.size() << "\n";
  for (const auto &P : Paths) dbg() << "$PATH_SIZE: " << P.size() << "\n";

  /*
   * Return the dominating paths
   */
  return Paths;
}

