#include "llvm/Support/CommandLine.h"

using namespace llvm;

namespace llvm {

  cl::opt<bool> IdempCodeGen("idemp-code-gen", cl::init(false),
      cl::desc("Enable idempotent transformations in the backend"));

  cl::opt<bool> IdempForceLRSpill("idemp-force-lr-spill", cl::init(false),
      cl::desc("Force spilling the LR register so we can safely insert a checkpoint call"));

} // namespace llvm

