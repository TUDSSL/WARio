#include "llvm/CodeGen/MachineDominators.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/Passes.h"
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

struct MachineIdempotentRegions : public MachineFunctionPass {
  static char ID;

  /*
   * Cut Locations
   */
  typedef std::set<MachineInstr *> CutsTy;

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
          errs() << "Found an idempotent boundary at: " << *MI << "\n";
          auto InstrToDelete = MI;
          ++MI;
          InstrToDelete->eraseFromParent();
        } else {
          ++MI;
        }
      }
    }
  }

  void findStackSpillWars(MachineFunction &MF, CutsTy &Cuts) {

    int FI; // Stack slot of the stack spill

    auto IterMachineInstr = [&](MachineInstr *MI) -> std::pair<bool, bool> {
      bool Stop = false;
      bool StopPath = false;

      // errs() << "   > Checking for stack load to " << FI << " at instruction:
      // " << *MI;
      int LFI;
      if (TII->isLoadFromStackSlot(*MI, LFI)) {
        errs() << "   # Checking LOAD Stack slot FI: " << LFI
               << " LOAD: " << *MI;
        if (FI == LFI) {
          errs() << "  To same stack slot!\n";
          Stop = true;
        }
      }
      return std::pair<bool, bool>(Stop, StopPath);
    };

    MachineInstr *FirstInstr = nullptr;
    for (auto &MBB : MF) {
      for (auto &MI : MBB) {
        if (!FirstInstr)
          FirstInstr = &MI;

        if (TII->isStoreToStackSlot(MI, FI)) {
          errs() << "# Stack slot FI: " << FI << " store: " << MI;
          if (reverseIterateOverMachineInstructions(FirstInstr, &MI,
                                                    IterMachineInstr, false)) {
            errs() << ">>> Stack slot store to: " << FI << " HAS WAR: " << MI;
            Cuts.insert(&MI);
          }
        }
      }
    }
  }

  void insertIdempBoundariesAtCuts(CutsTy &Cuts) {
    for (auto &MI : Cuts) {
      errs() << "inserting idempotent boundary begore: " << *MI;
      insertIdempBoundary(*MI);
    }
  }

  bool runOnMachineFunction(MachineFunction &MF) override {
    // Init variables used troughout the pass
    TII = MF.getSubtarget().getInstrInfo();

    assert(TII != nullptr);

    if (IdempCodeGen == false)
      return false;

    errs() << "># "
           << "FUNCTION:: "
           << ": " << MF.getName() << "\n";
    for (const auto &BB : MF) {
      // errs() << "       " << BB << "\n";
      for (const auto &I : BB) {
        errs() << "       " << I;
      }
    }

    errs() << "\n\n";

    CutsTy Cuts;
    findStackSpillWars(MF, Cuts);
    insertIdempBoundariesAtCuts(Cuts);

    removeIdempIntrinsics(MF);

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
