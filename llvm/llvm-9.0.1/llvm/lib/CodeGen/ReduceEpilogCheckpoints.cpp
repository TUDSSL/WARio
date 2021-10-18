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


struct ReduceEpilogCheckpoints : public MachineFunctionPass {
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

  ReduceEpilogCheckpoints() : MachineFunctionPass(ID) {}

  StringRef getPassName() const override {
    return "MachineFunction reduce epilog checkpoints";
  }

  void getAnalysisUsage(AnalysisUsage &AU) const override {
    AU.addRequired<MachineDominatorTree>();
    AU.setPreservesAll();
    MachineFunctionPass::getAnalysisUsage(AU);
  }


  void printMachineFunction(MachineFunction &MF) {
    dbg() << "Machine Function: " << MF.getName() << "\n";
    for (const auto &BB : MF) {
      dbg() << "  " << BB;
    }
  }

  void reducePopCheckpoints(MachineBasicBlock &MBB) {
    std::vector<MachineInstr *> PCI;

    // Collect all the pop checkpoint calls in the MBB
    for (auto &MI : MBB) {
      if (MI.isCall()) {
        if (MI.getNumOperands() >= 3) {
          auto &FnOp = MI.getOperand(2);
          if (FnOp.isSymbol()) {
            if (strcmp(FnOp.getSymbolName(), "__checkpoint_pop_nostack") == 0) {
              PCI.push_back(&MI);
            }
          }
        }
      }
    }

    if (PCI.size() <= 1) {
      // Nothing to reduce
      return;
    }

    dbg() << "attempting to reduce checkpoints:\n";
    for (auto &CP : PCI)
      dbg() << "  " << *CP;

    // Replace the first checkpoint call with a disable interrupts
    // Add an enable interrupts after the SP increase AFTER the last checkpoint
    // call.
    //
    // e.g.
    //  str.w	lr, [sp, #-16]
    //  bl	f2be <__checkpoint_pop>
    //  add	sp, #4
    //  str.w	lr, [sp, #-16]
    //  bl	f2be <__checkpoint_pop>
    //  add	sp, #4
    //
    // will become
    //  CPSID i
    //  add	sp, #4
    //  str.w	lr, [sp, #-16]
    //  bl	f2be <__checkpoint_pop>
    //  add	sp, #4
    //  CPSIE i

    auto *FirstMI = PCI.front();
    auto *LastMI = PCI.back();

    //dbg() << "FirsMI: " << *FirstMI;
    //dbg() << "LastMI: " << *LastMI;

    // Insert disable interrupts instruction
    TII->insertSetInterrupts(MBB, FirstMI->getNextNode(), false);

    // Insert enagble interrupts instruction (after the SP access)
    TII->insertSetInterrupts(MBB, LastMI->getNextNode()->getNextNode(), true);

    // Remove the checkpoints that are not needed
    for (auto &I : PCI) {
      if (I == LastMI) continue;
      dbg() << "removing checkpoint: " << *I;
      TII->removeCheckpoint(MBB, I);
    }
  }

  bool runOnMachineFunction(MachineFunction &MF) override {
    if (!IdempDisableInterruptDuringPop) return false;
    /*
     * Only run the pass when the target is thumb
     */
    auto Target = MF.getSubtarget().getTargetTriple();
    if (!Target.isThumb()) return false;

    // Init variables used troughout the pass
    TII = MF.getSubtarget().getInstrInfo();
    //MachineDominatorTree &DT = getAnalysis<MachineDominatorTree>();

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
    dbg() << "* Running MachineIdempotentRegions epilog pass pass on: " << MF.getName()
           << "\n";
    dbg() << "****************************************************************"
              "**\n";

    //dbg() << "\n\n";
    //printMachineFunction(MF);
    //dbg() << "\n\n";

    // Reduce the redundant __checkpoint_pop calls
    for (auto &MBB : MF) {
      reducePopCheckpoints(MBB);
    }

    return true;
  }
};

char ReduceEpilogCheckpoints::ID = 0;
} // namespace

char &llvm::ReduceEpilogCheckpointsID = ReduceEpilogCheckpoints::ID;
INITIALIZE_PASS(ReduceEpilogCheckpoints, "reduce-pop-checkpoints",
                "Idempotent region: reduce epilog pop checkpoints", false, true)

namespace llvm {
MachineFunctionPass *createReduceEpilogCheckpoints() {
  return new ReduceEpilogCheckpoints();
}

} // namespace llvm
