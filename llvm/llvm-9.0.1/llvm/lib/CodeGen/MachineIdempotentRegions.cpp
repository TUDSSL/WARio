#include "llvm/CodeGen/MachineDominators.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/Passes.h"
#include "llvm/CodeGen/PseudoSourceValue.h"
#include "llvm/CodeGen/SlotIndexes.h"
#include "llvm/IR/IRPrintingPasses.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"

#include "llvm/CodeGen/TargetInstrInfo.h"
#include "llvm/CodeGen/TargetSubtargetInfo.h"

#include "llvm/CodeGen/IdempotenceOptions.h"
#include <unordered_set>
#include <vector>

using namespace llvm;

namespace {

static bool reverseIterateOverMachineInstructions(
    MachineInstr *From, MachineInstr *To,
    std::function<std::pair<bool, bool>(MachineInstr *I)>
        FucntionToInvokePerInstruction,
    bool DebugPrint) {

  auto *FBB = From->getParent();
  auto *TBB = To->getParent();

  const MachineBasicBlock::iterator FromIt(From);
  const MachineBasicBlock::iterator ToIt(To);

  if (DebugPrint) {
    errs() << "Checking Uncut Path from: " << *From << " to: " << *To << "\n";
    errs() << "From BB: " << *FBB << "TO BB: " << *TBB << "\n";
  }

  std::vector<MachineBasicBlock *> WorkList;
  std::unordered_set<MachineBasicBlock *> VisitedBB;

  WorkList.push_back(TBB);
  while (WorkList.size()) {
    /*
     * Get the last BasicBlock from the WorkList
     */
    auto *BB = WorkList.back();
    WorkList.pop_back();

    if (DebugPrint)
      errs() << "\nVisiting BB: " << *BB << "\n";

    auto E = BB->begin();
    MachineBasicBlock::iterator Cursor =
        ((BB == TBB) && VisitedBB.find(TBB) == VisitedBB.end()) ? ToIt
                                                                : BB->end();

    if (DebugPrint) {
      if (Cursor == BB->end())
        errs() << "Seach start: "
               << "Block END"
               << "\n";
      else
        errs() << "Seach start: " << *Cursor << "\n";
      errs() << "Search end E: " << *E << "\n";
    }

    bool StopPath = false;
    bool Stop = false;
    while (Cursor-- != E) {
      MachineInstr *CursorInst = &*Cursor;
      std::tie(Stop, StopPath) = FucntionToInvokePerInstruction(CursorInst);

      if (Stop)
        return true;
      if (StopPath)
        break;
    }

    if (!StopPath) {
      // Search in the predecessor BasicBlocks if we did not already visit them.
      // for (auto P : predecessors(BB))
      //  if (VisitedBB.insert(P).second) WorkList.push_back(P);
      for (MachineBasicBlock::pred_iterator P = BB->pred_begin();
           P != BB->pred_end(); ++P)
        if (VisitedBB.insert(*P).second)
          WorkList.push_back(*P);
    }
  }

  return false;
}

/*
 * Types
 */
typedef struct{
  MachineInstr *Read;
  MachineInstr *Write;
} ReadWritePairTy;

typedef std::list<ReadWritePairTy> ReadWritePairsTy;
typedef std::vector<MachineInstr *> PathTy;
typedef std::list<PathTy> PathsTy;
typedef std::set<MachineInstr *> CutsTy;

/*
 * Hitting set algorithm
 */
class HittingSet {
protected:
  typedef std::map<MachineInstr *, unsigned int> HitCountMapTy;

  const PathsTy &IdempotentPaths;
  CutsTy Cuts;
  HitCountMapTy HitCountMap;

  bool Valid = false;

  void computeHitCountMap(PathsTy &Paths) {
    HitCountMap.clear();

    for (const auto &Path : Paths)
      for (const auto &Point : Path)
        HitCountMap[Point]++;
  }

  void removeCutPaths(PathsTy &Paths, MachineInstr *Cut) {
    auto It = Paths.begin();
    while (It != Paths.end()) {
      auto &P = *It;
      if (std::find(P.begin(), P.end(), Cut) != P.end()) {
        // For each point in the Path that will be removed, we decrement the
        // corresponding HitCountMap entry
        for (const auto &Point : *It)
          HitCountMap[Point]--;

        // Erase the Path
        It = Paths.erase(It);
      } else {
        ++It;
      }
    }
  }

  bool verify(CutsTy &Solution) {
    size_t CoveredPaths = 0;

    for (const auto &Path : IdempotentPaths) {
      for (const auto &P : Path) {
        if (Solution.find(P) != Solution.end()) {
          // Found a cut that breaks the Path
          CoveredPaths++;
          break;
        }
      }
    }
    return (CoveredPaths == IdempotentPaths.size());
  }

public:
  HittingSet(const PathsTy &IdempotentPaths)
      : IdempotentPaths(IdempotentPaths) {}

  #define hsdbg() if (!PrintDebug) {} else dbg()
  CutsTy &run(bool PrintDebug = false) {
    hsdbg() << "Running HittingSet\n";

    int Step = 0;
    PathsTy RemainingPaths = IdempotentPaths;

    computeHitCountMap(RemainingPaths);

    while (RemainingPaths.size() > 0) {

      hsdbg() << "\nStep: " << Step << "\n";
      hsdbg() << "Remaining Paths: " << RemainingPaths.size() << "\n";

      // Calculate the priority Hits*Cost
      // Track the highest Priority
      MachineInstr *Candidate;
      double CandidatePriority = 0;
      for (const auto &KV : HitCountMap) {
        auto *I = KV.first;
        const auto &H = KV.second;

        //double Priority = (double)H / (double)PC.cost(I);
        double Priority = (double)H;
        if (Priority > CandidatePriority) {
          Candidate = I;
          CandidatePriority = Priority;
        }
      }

      // Debug Information
      hsdbg() << "Candidate: " << *Candidate << "\n";
      hsdbg() << "  Priority: " << CandidatePriority << "\n";
      hsdbg() << "  Hits: " << HitCountMap[Candidate] << "\n";

      // Add the Candidate to the Cuts
      Cuts.insert(Candidate);

      // Remove the Paths containing the Candidate from the RemainingPaths
      // Additionally updates the HitCountMap
      removeCutPaths(RemainingPaths, Candidate);

      // Increase the step count (debugging)
      ++Step;
    }

    // Verify if the Cuts cover all the
    assert((verify(Cuts) == true) && "Verify failed, not all paths are cut");

    /*
     * Debug information
     */
    hsdbg() << "\nMinimal Cuts:\n";
    for (const auto &Cut : Cuts)
      hsdbg() << *Cut << "\n";
    hsdbg() << "\n";

    return Cuts;
  }
};

struct MachineIdempotentRegions : public MachineFunctionPass {
  static char ID;

  /*
   * Track the checkpoint reason
   * Used for statistics in the emulator
   */
  typedef llvm::TargetInstrInfo::CheckpointReason CheckpointReasonTy;
  std::map<MachineInstr *, CheckpointReasonTy> InstrCheckpointReasonMap;

  /*
   * Easy access for information used by the Pass
   */
  const TargetInstrInfo *TII;

  MachineIdempotentRegions() : MachineFunctionPass(ID) {}

  StringRef getPassName() const override { return "MachineFunction Printer"; }

  void getAnalysisUsage(AnalysisUsage &AU) const override {
    AU.addRequired<MachineDominatorTree>();
    AU.setPreservesAll();
    MachineFunctionPass::getAnalysisUsage(AU);
  }

  void insertIdempBoundary(MachineInstr &MI) {
    TII->insertIdempBoundary(*MI.getParent(), MI);
  }

  void removeIdempIntrinsics(MachineFunction &MF) {
    for (auto &MBB : MF) {

      MachineBasicBlock::iterator MI = MBB.begin();
      while (MI != MBB.end()) {
        if (TII->isIdempBoundary(*MI)) {
          auto InstrToDelete = MI;
          ++MI;
          InstrToDelete->eraseFromParent();
        } else {
          ++MI;
        }
      }
    }
  }

  void removeInstructions(CutsTy &Instr) {
    for (auto &MI : Instr) {
      MI->eraseFromParent();
    }
  }

  int findStackSpillWars(MachineFunction &MF, ReadWritePairsTy &ReadWritePairs) {

    int FI; // Stack slot of the stack spill
    std::vector<MachineInstr *> WarLoads;
    int StackSpillWarCount = 0;

    auto IterMachineInstr = [&](MachineInstr *MI) -> std::pair<bool, bool> {
      bool Stop = false;
      bool StopPath = false;

      // dbg() << "   > Checking for stack load to " << FI << " at instruction:
      // " << *MI;
      int LFI;
      if (TII->isLoadFromStackSlot(*MI, LFI)) {
        //dbg() << "   # Checking LOAD Stack slot FI: " << LFI
        //       << " LOAD: " << *MI;
        if (FI == LFI) {
          //dbg() << "  To same stack slot!\n";
          //LoadMI = MI;
          WarLoads.push_back(MI);
          StopPath = true;
        }
      } else if (TII->isIdempBoundary(*MI)) {
        // An IDEMP boundary already breaks the path.
        //dbg() << "Found IDEMP boundary, stopping path\n";
        StopPath = true;
      } else if (MI->isCall()) {
        // A call breaks the path
        StopPath = true;
      }
      return std::pair<bool, bool>(Stop, StopPath);
    };

    MachineInstr *FirstInstr = nullptr;
    for (auto &MBB : MF) {
      for (auto &MI : MBB) {
        if (!FirstInstr)
          FirstInstr = &MI;

        if (TII->isStoreToStackSlot(MI, FI)) {
          MachineInstr *StoreMI = &MI;
          dbg() << "# Stack slot FI: " << FI << " store: " << *StoreMI;

          // Collect all the WAR loads connected to Store into WarLoads
          WarLoads.clear();
          reverseIterateOverMachineInstructions(FirstInstr, StoreMI,
                                                    IterMachineInstr, false);

          if (WarLoads.size()) {
            for (auto *LoadMI : WarLoads) {
              dbg() << "  >>> Stack slot store to: " << FI << " has a  WAR:\n"
                    << "    Read: " << *LoadMI
                    << "    Write: " << *StoreMI << "\n";
              ReadWritePairs.push_back(ReadWritePairTy{LoadMI, StoreMI});
            }
            // Number of WAR stores
            ++StackSpillWarCount;
          }
        }
      }
    }
    return StackSpillWarCount;
  }

  bool isPossiblePathInstruction(MachineInstr *MI) {
    if (MI->isBranch() || MI->isReturn() || MI->isPHI()) return false;
    return true;
  }

  void collectStackSpillPaths(MachineDominatorTree &DT, ReadWritePairsTy &ReadWritePairs, PathsTy &Paths) {
    for (auto &RW : ReadWritePairs) {
      // Get the reference to a new path vector for this WAR
      Paths.resize(Paths.size()+1);
      auto &Path = Paths.back();
      auto *Load = RW.Read;
      auto *Store = RW.Write;

      auto *LoadBB = Load->getParent();
      auto *StoreBB = Store->getParent();

      auto *BB = StoreBB;
      auto *DTN = DT.getNode(BB);
      MachineBasicBlock::iterator Cursor(Store);

      // The path starts with the WAR store
      Path.push_back(Store);

      do {
        //dbg() << "\nVisiting BB: " << *BB << "\n";
        while (Cursor-- != BB->begin()) {
          auto *MI = cast<MachineInstr *>(Cursor);
          //dbg() << "Cursor: " << *MI << "\n";

          // Stop if we reach the WAR load
          if (MI == Load) break;

          if (isPossiblePathInstruction(MI)) {
            Path.push_back(MI);
          }
        }
        // Move on to the Immediate Dominator if it exists, otherwise we are done
        DTN = DTN->getIDom();
        if (DTN == nullptr) break;

        // Setup for iterating trough the next BB
        BB = DTN->getBlock();
        Cursor = BB->end();

      } while (DT.dominates(LoadBB, BB)); // Every node dominates itself

      // Also consider placing it in the LoadBB. Good for loops.
      MachineBasicBlock::iterator LoadBBCursor(Load);
      while (++LoadBBCursor != LoadBB->end()) {
        if (LoadBBCursor == Store) break;
        auto *MI = cast<MachineInstr *>(LoadBBCursor);
        if (isPossiblePathInstruction(MI)) {
          Path.push_back(MI);
        }
      }

      #if 0
      if (IdempDebug) {
        dbg() << "WAR:\n"
              << "    Read:" << *Load
              << "    Write:" << *Store
              << "  Has Path:\n";
        for (auto &MI : Path) {
          dbg() << "    " << *MI;
        }
      }
      #endif

    }
  }

  void findRedundantCuts(MachineFunction &MF, CutsTy &Cuts) {
    auto IterMachineInstr = [&](MachineInstr *MI) -> std::pair<bool, bool> {
      bool Stop = false;
      bool StopPath = false;

      // If the instruction is a idemp boundary, this path is already covered
      if (TII->isIdempBoundary(*MI)) {
        StopPath = true;
      }
      // If the instruction is a load (reads memory), we NEED this checkpoint
      else if (MI->mayLoad()) {
        // Force stop, makes reverseIterateOverMachineFunctions return true
        Stop = true;
      }

      return std::pair<bool, bool>(Stop, StopPath);
    };

    MachineInstr *FirstInstr = nullptr;
    for (auto &MBB : MF) {
      for (auto &MI : MBB) {
        if (!FirstInstr)
          FirstInstr = &MI;

        if (TII->isIdempBoundary(MI)) {
          // If ANY path from this idemp to the previous idemp (or start)
          // does not have another read in it, we can safely remove it
          // If we need the idemp, the function return true
          if(!reverseIterateOverMachineInstructions(FirstInstr, &MI,
                                                IterMachineInstr, false)) {
            // We can remove the cut
            Cuts.insert(&MI);
          }
        }
      }
    }
  }

  void findCallCuts(MachineFunction &MF, CutsTy &Cuts) {
    for (auto &MBB : MF) {
      for (auto &MI : MBB) {
        if (MI.isCall()) {
          dbg() << "Adding call cut before " << MI;
          Cuts.insert(&MI);
        }
      }
    }
  }

  void insertIdempBoundariesAtCuts(CutsTy &Cuts, CheckpointReasonTy CPR) {
    for (auto &MI : Cuts) {
      dbg() << "inserting idempotent boundary before: " << *MI;
      insertIdempBoundary(*MI);

      auto *I = MI->getPrevNode(); // The idempotent boundary
      InstrCheckpointReasonMap[I] = CPR;
    }
  }

  void lowerIdempToCheckpoint(MachineFunction &MF) {
    for (auto &MBB : MF) {
      for (auto &MI : MBB) {
        if (TII->isIdempBoundary(MI)) {
          auto CPR = TII->CHECKPOINTR_IR; // Default reason

          auto ICR = InstrCheckpointReasonMap.find(&MI);
          if (ICR != InstrCheckpointReasonMap.end()) {
            CPR = ICR->second;
          }

          // Insert the checkpoint
          TII->insertCheckpoint(MBB, MI, CPR);
        }
      }
    }
  }

  void printMachineFunction(MachineFunction &MF) {
    dbg() << "Machine Function: " << MF.getName() << "\n";
    for (const auto &BB : MF) {
      dbg() << "  " << BB;
    }
  }

  bool runOnMachineFunction(MachineFunction &MF) override {
    /*
     * Only run the pass when the target is thumb
     */
    auto Target = MF.getSubtarget().getTargetTriple();
    if (!Target.isThumb()) return false;

    // Init variables used troughout the pass
    TII = MF.getSubtarget().getInstrInfo();
    MachineDominatorTree &DT = getAnalysis<MachineDominatorTree>();

    assert(TII != nullptr);

    if (IdempCodeGen == false)
      return false;

    if (MF.getName().contains("__checkpoint")) {
      dbg() << "Skipping: " << MF.getName() << "\n";
      return false;
    }

    dbg() << "\n";
    dbg() << "****************************************************************"
              "**\n";
    dbg() << "* Running MachineIdempotentRegions pass on: " << MF.getName()
           << "\n";
    dbg() << "****************************************************************"
              "**\n";

    //dbg() << "\n\n";
    //printMachineFunction(MF);
    //dbg() << "\n\n";

    /*
     * Find and resolve spill WARs
     */
    ReadWritePairsTy ReadWritePairs;
    PathsTy Paths;
    CutsTy SpillCuts;

    // Find all the stack spill WARs
    int StackSpillWarCount = findStackSpillWars(MF, ReadWritePairs);

    if (IdempStackSpillHittingSet) {
      // Find all the stack spill paths that need to be resolved with a checkpoint
      collectStackSpillPaths(DT, ReadWritePairs, Paths);

      // Find a minimal set of checkpoint locations
      HittingSet HS(Paths);
      SpillCuts = HS.run();

      dbg() << "Stack spill WAR stores: " << StackSpillWarCount << "\n";
      dbg() << "Stack spill WAR violations: " << ReadWritePairs.size() << "\n";
      dbg() << "Stack spill Cuts: " << SpillCuts.size() << "\n";
    } else {
      // Collect the WAR writes
      // CutsTy is a set, so it will contain all unique Spill WAR writes
      std::set<MachineInstr *> WarWrites;
      for (auto &SpillWar : ReadWritePairs) {
        SpillCuts.insert(SpillWar.Write);
      }
    }

    // Insert checkpoints at stack spill cuts
    insertIdempBoundariesAtCuts(SpillCuts, CheckpointReasonTy::CHECKPOINTR_SPILL);

    /*
     * Find and resolve function calls
     */
    CutsTy CallCuts;
    findCallCuts(MF, CallCuts);
    insertIdempBoundariesAtCuts(CallCuts, CheckpointReasonTy::CHECKPOINTR_CALL);

    /*
     * Find and remove redundant cuts
     */
    CutsTy RedundantCuts;
    findRedundantCuts(MF, RedundantCuts);

    // Print the redundant Cuts
    for (auto &C : RedundantCuts) {
      dbg() << "Removing cut before: " << *C->getNextNode();
    }

    // Remove the redundant Cuts
    removeInstructions(RedundantCuts);

    // Lower the checkpoint instruction
    lowerIdempToCheckpoint(MF);

    // Remove the IDEMP instructions
    removeIdempIntrinsics(MF);

    //dbg() << "\n\nRemoved IDEMP:\n";
    //printMachineFunction(MF);

    return false;
  }
};

char MachineIdempotentRegions::ID = 0;
} // namespace

char &llvm::MachineIdempotentRegionsID = MachineIdempotentRegions::ID;
INITIALIZE_PASS(MachineIdempotentRegions, "machine-idempotent-regions",
                "Idempotent Region Checkpoint Placer", false, true)

namespace llvm {
MachineFunctionPass *createMachineIdempotentRegions() {
  return new MachineIdempotentRegions();
}

} // namespace llvm
