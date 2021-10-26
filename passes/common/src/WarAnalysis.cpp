#include "Configurations.hpp"
#include "PassUtils.hpp"
#include "WarAnalysis.hpp"

using namespace IdempotentRegion;

/*
 * TODO: Ratchet also cuts intrinsic calls, but I assume thats uninteded?
 * Figure out if there needs to be two versions!
 */
bool WarAnalysis::forcesCut(Instruction &I) {
  if (isa<IntrinsicInst>(I)) return false; // intrinsics never create a cut! (TODO: CHECK THIS)

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
  auto DT = N.getDominators(&F)->DT;

  list<Dependence> war_deps;
  list<Dependence> raw_deps;

  Instruction *I;

  auto iterDep = [&](Value *src, DGEdge<Value> *dependence) -> bool {
    if (dependence == nullptr) return false;
    if (src == nullptr) return false;

    switch (dependence->dataDependenceType()) {
      case DG_DATA_WAR:
        dbg() << "             needs [WAR]";
        dbg() << "  " << *src << "\n";
        war_deps.push_back(Dependence{src, dependence->isMustDependence()});
        break;
      case DG_DATA_RAW:
        dbg() << "             needs [RAW]";
        dbg() << "  " << *src << "\n";
        raw_deps.push_back(Dependence{src, dependence->isMustDependence()});
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
    if (isa<StoreInst>(I) || isa<LoadInst>(I)) {
      dbg() << "Instruction" << I << " depends on:\n";

      FDG->iterateOverDependencesTo(&I, false, true, false, iterDep);
      if (war_deps.size() > 0) WarDepMap[&I] = war_deps;
      if (raw_deps.size() > 0) RawDepMap[&I] = raw_deps;

      war_deps.clear();
      raw_deps.clear();
    }
  }
}

void WarAnalysis::collectWarDependencies() {
  dbg() << "Collecting WAR depencies\n";

  auto FDG = N.getFunctionDependenceGraph(&F);
  auto DT = N.getDominators(&F)->DT;
  auto FirstInst = F.getEntryBlock().getFirstNonPHI();

  /*
   * Iteratre trough the found WARs and eliminate WARs that must go trough
   * another WAR.
   */
  for (auto &kv : WarDepMap) {
    auto Write = kv.first;
    auto &Reads = kv.second;

    dbg() << "Analyzing write: " << *Write << "\n";

    auto IterInst = [&](Instruction *I) -> pair<bool, bool> {
      bool Stop = false;
      bool StopPath = false;

      if (auto Read = dyn_cast<LoadInst>(I)) {
        if (find(Reads.begin(), Reads.end(), Read) != Reads.end()) {
          dbg() << "  WAR Read: " << *Read << " found\n";
          AllWars.push_back(ReadWritePairTy{Read, Write});
          StopPath = true;
        }
      }

      return pair<bool, bool>(Stop, StopPath);
    };

    Utils::ReverseIterateOverInstructions(FirstInst, Write, IterInst);
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

  auto IterInst = [&](Instruction *I) -> pair<bool, bool> {
    bool Stop = false;
    bool StopPath = false;

    if (Cuts.find(I) != Cuts.end()) {
      dbg() << "WAR cut by: " << *I << "\n";
      StopPath = true;
    } else if (I == From) {
      dbg() << "Found a path\n";
      Stop = true;
    }

    return pair<bool, bool>(Stop, StopPath);
  };

  return Utils::ReverseIterateOverInstructions(From, To, IterInst);
}

void WarAnalysis::collectUncutWars() {
  for (auto RW : AllWars) {
    if (hasUncutPath(ForcedCuts, RW.read, RW.write))
      UncutWars.push_back(RW);
    else
      PrecutWars.push_back(RW);
  }
}

void WarAnalysis::collectDominatingPaths() {
  dbg() << "\nCollecting Dominating Paths\n";

  auto DT = N.getDominators(&F)->DT;

  for (auto &RW : UncutWars) {
    // Get a reference to the Path vector for this WAR
    Paths.resize(Paths.size()+1);
    auto &Path = Paths.back();

    auto Load = RW.read;
    auto Store = RW.write;

    auto LoadBB = Load->getParent();
    auto StoreBB = Store->getParent();

    auto BB = StoreBB;
    auto DTN = DT.getNode(BB);
    BasicBlock::iterator Cursor(Store);

    // The Path starts with the WAR Store
    Path.push_back(Store);

    do {
      dbg() << "\nVisiting BB: " << *BB << "\n";
      while (Cursor-- != BB->begin()) {
        dbg() << "Cursor: " << *Cursor << "\n";
        if (auto I = dyn_cast<StoreInst>(Cursor)){
          Path.push_back(I);
        } else if (cast<Instruction>(Cursor) == Load) {
          break;
        } else {
          if (UseMoreInstructionsInPath) {
            /*
             * Add all instructions in between the WAR to the Path, instead of
             * only Store instructions.
             */
            auto PI = cast<Instruction>(Cursor);
            if (!isa<PHINode>(PI) && !isa<IntrinsicInst>(PI)) {
              Path.push_back(cast<Instruction>(Cursor));
            }
          }
        }
      }
      // Move on to the Immediate Dominator if it exists, otherwise we are done
      DTN = DTN->getIDom();
      if (DTN == nullptr) break;

      // Setup for iterating trough the next BB
      BB = DTN->getBlock();
      Cursor = BB->end();

    } while (DT.dominates(LoadBB, BB)); // Every node dominates itself

    // Add the Path to the WarPathMap
    WarPathMap[&RW] = &Path;
  }
}

// TODO: Make adding metadata optional (if used in another pass)
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
   * Remove the redundant WAR violations from the ones found using Noelle
   */
  collectWarDependencies();

  /*
   * Collect the Forced cuts
   */
  collectForcedCuts();

  /*
   * Collect the Uncut WAR violations
   * NB. This could be done in the collectWarDependencies step
   */
  collectUncutWars();

  /*
   * Collect the possible *dominating* Paths from a WAR read to a WAR write
   */
  collectDominatingPaths();

  /*****************************************************************************
   * Attach Metadata
   ****************************************************************************/
  for (auto &W : AllWars) {
    Utils::SetInstrumentationMetadata(W.write, "idemp", "idemp_war_wr");
    Utils::SetInstrumentationMetadata(W.read, "idemp", "idemp_war_rd");
  }

  // Attach metadata to pre-cut wars
  for (auto &W : PrecutWars) {
    Utils::SetInstrumentationMetadata(W.write, "idemp", "idemp_precut_war");
  }

  // Attach metadata to uncut wars
  for (auto &W : UncutWars) {
    Utils::SetInstrumentationMetadata(W.write, "idemp", "idemp_uncut_war");
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
    for (auto r : war.second) dbg() << "    needs: " << *r.Value << "\n";
  }

  /*
   * Print Uncut Wars
   */
  dbg() << "\nAll Wars:\n";
  for (const auto &W : AllWars) {
    dbg() << "  [WAR] " << W << "\n";
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
    dbg() << "  [WAR] " << W << "\n";
  }

  /*
   * Print Uncut Wars
   */
  dbg() << "\nUncut Wars:\n";
  for (const auto &W : UncutWars) {
    dbg() << "  [WAR] " << W << "\n";
    dbg() << "    Covered by Path: ";
    for (const auto &I : *WarPathMap[&W]) dbg() << "      " << *I << "\n";
    dbg() << "\n";
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

