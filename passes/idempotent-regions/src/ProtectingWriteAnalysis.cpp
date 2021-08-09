#include "Configurations.hpp"
#include "PassUtils.hpp"
#include "ProtectingWriteAnalysis.hpp"

using namespace IdempotentRegion;

/*
 * Go trough the RAWs collected by the Noelle Intruction dependency result
 * and remove protecting writes to the same WAR that dominate another protecting
 * write. e.g., Wa,Wb,R; where all reads and writes are to the same location
 * we discard Protecting Write Wa as it dominates Wb.
 */
void ProtectingWriteAnalysis::collectPotentialProtectingWrites() {
  auto &DT = N.getDominators(&F)->DT;

  for (auto &kv : WA.getRawDepMap()) {
    auto Read = kv.first;
    auto &Writes = kv.second;

    vector<Instruction *> AllWrites;

    // Collect Writes that Dominate the WAR Read
    for (auto WriteDep : Writes) {
      if (WriteDep.IsMust == false) continue; // TODO: Check this

      auto WriteVal = WriteDep.Value;
      auto Write = cast<Instruction>(WriteVal);
      if (!DT.dominates(Write, Read)) {
        continue;
      }
      AllWrites.push_back(Write);
    }

    // Stop searching if there are no protecting writes
    if (AllWrites.size() == 0) continue;

    // Sort the potential protecting writes using dominator information
    // The first element in AllWrites will be the closes protecting Write that
    // dominates the WAR Read.
    auto WriteSort = [&] (const Instruction *a, const Instruction *b) -> bool {
      return !DT.dominates((Instruction *)a, (Instruction *)b);
    };
    std::sort(AllWrites.begin(), AllWrites.end(), WriteSort);

    // Add the closest protecting write to a map
    auto PW = AllWrites.front();
    ReadPotentialProtectingWriteMap[Read] = PW;
  }
}


/*
 * Collect all the potential Cut locations from From to To
 * If any Cuts are found then we return an empty vector
 */
PathTy ProtectingWriteAnalysis::collectAllPotentialCutLocations(
    Instruction *From, Instruction *To, const CutsTy &Cuts) {
  PathTy PotentialCuts;
  dbg() << "Collecting Potential Cuts from: " << *From << " to: " << *To
        << "\n";

  auto IterInst = [&](Instruction *I) -> pair<bool, bool> {
    bool Stop = false;
    bool StopPath = false;

    dbg() << "At instruction: " << *I << "\n";

    if (Cuts.find(I) != Cuts.end()) {
      dbg() << "Protecting Path cut by: " << *I << "\n";
      // A cut in any of the paths excludes it from being a protecting write
      PotentialCuts.clear();
      Stop = true;

    } else if (auto C = dyn_cast<StoreInst>(I)) {
      dbg() << "Adding: " << *C << "\n";
      PotentialCuts.push_back(C);

      if (I == From) {
        dbg() << "Found a path\n";
        StopPath = true;
      }
    }

    return pair<bool, bool>(Stop, StopPath);
  };

  Utils::ReverseIterateOverInstructions(From, To, IterInst);

  return PotentialCuts;
}

void ProtectingWriteAnalysis::collectProtectedPaths() {
  for (auto &kv : WA.getWarPathMap()) {
    auto &War = kv.first;
    auto &Path = kv.second;

    // Get potential protecting Writes
    if (ReadPotentialProtectingWriteMap.find(War->read) !=
        ReadPotentialProtectingWriteMap.end()) {
      // Found a potential protecting write
      auto PW = cast<Instruction>(ReadPotentialProtectingWriteMap[War->read]);
      dbg() << "Potential protecting write:" << *PW << "\n";

      // Get all possible paths that lead from the Protecting Write to the Read
      // Stop and discard if any of them are a cut
      auto CP =
          collectAllPotentialCutLocations(PW, War->read, WA.getForcedCuts());

      if (CP.size()) {
        dbg() << "WAR: " << *War << "\n  Is protected by: " << *PW << "\n";
        // Add all the Points to the ConditionalPathsTy
        for (auto &P : CP) {
          ConditionalPathsMap[P].push_back(Path);
        }
        ConditionalPaths.push_back(Path);
        PotentialProtectingWrites.push_back(PW);
        PotentialProtectingWriteWarMap[PW] = *War;
      }
    }
  }
}

ProtectingWriteAnalysis::ConditionalPathsTy &ProtectingWriteAnalysis::run() {
  dbg() << "Running ProtectingWriteAnalysis\n";

  /*
   * Collect for reads in a WAR the closest protecting write (if any).
   * A protecting write must dominate the Read in the WAR.
   */
  collectPotentialProtectingWrites();

  /*
   * 1. Find Writes that actually protect a WAR without any cuts except for the
   *    forced cuts.
   * 2. Collect all the Paths that would be introduced if a cut is placed
   *    on the corresponding Conditional Path (i.e. what WARs to re-introduce
   *    if they are no longer protected by the Protecting Write).
   */
  collectProtectedPaths();

  /*****************************************************************************
   * Attach Metadata
   ****************************************************************************/
  for (auto &W : PotentialProtectingWrites) {
    Utils::SetInstrumentationMetadata(W, "idemp", "idemp_pot_pwrite");
  }

  /*****************************************************************************
   * Print debugging/testing information
   ****************************************************************************/
  /*
   * Print Conditional Paths
   */
  dbg() << "\nConditional Paths:\n";
  for (auto &kv : ConditionalPathsMap) {
    auto I = kv.first;
    auto Paths = kv.second;
    dbg() << "Cut at instruction: " << *I << "\n";
    dbg() << "  Introduces paths:\n";
    for (auto &Path : Paths) {
      dbg() << "    Path:";
      for (auto &P : *Path) dbg() << "  "  << *P << "\n";
    }
  }

  /*
   * Print Potential Protecting Writes
   */
  dbg() << "\nPotential Protecting Writes:\n";
  for (const auto &kv : PotentialProtectingWriteWarMap) {
    auto PW = kv.first;
    auto WAR = kv.second;
    dbg() << "  Write " << *PW << " potentially protects WAR:\n";
    dbg() << "    " << WAR << "\n";
  }


  return ConditionalPaths;
}
