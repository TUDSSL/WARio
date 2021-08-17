#include "llvm/Support/CommandLine.h"

using namespace llvm;

namespace llvm {

cl::opt<bool>
    IdempDebug("idemp-debug", cl::init(false),
                 cl::desc("Turn on debugging outputs/prints"));

cl::opt<bool>
    IdempCodeGen("idemp-code-gen", cl::init(false),
                 cl::desc("Enable idempotent transformations in the backend"));

cl::opt<bool>
    IdempForceLRSpill("idemp-force-lr-spill", cl::init(false),
                      cl::desc("Force spilling the LR register so we can "
                               "safely insert a checkpoint call"));

cl::opt<bool>
    IdempPop("idemp-pop", cl::init(false),
             cl::desc("Replace all pop instructions with one that does not "
                      "writeback SP, creates a checkpoint, then writes SP"));

cl::opt<bool>
    IdempNoCheckpointCall("idemp-no-checkpoint-call", cl::init(false),
                          cl::desc("Dont insert any checkpoint calls"));

cl::opt<bool> IdempCheckpointReasonMarkers(
    "idemp-checkpoint-reason-markers", cl::init(false),
    cl::desc("Insert checkpoint reason marker calls to use in the emulator. "
             "THIS WILL BREAK THE CODE IF NOT HANDLED CORRECTLY."));

} // namespace llvm
