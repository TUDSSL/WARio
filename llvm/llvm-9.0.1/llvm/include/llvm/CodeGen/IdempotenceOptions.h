#ifndef LLVM_CODEGEN_INTERMITTENTOPTIONS_H
#define LLVM_CODEGEN_INTERMITTENTOPTIONS_H

#include "llvm/Support/CommandLine.h"

namespace llvm {

  extern cl::opt<bool> IdempForceLRSpill;
  extern cl::opt<bool> IdempCodeGen;
  extern cl::opt<bool> IdempPop;

  extern cl::opt<bool> IdempNoCheckpointCall;

} // namespace llvm

#endif // LLVM_CODEGEN_INTERMITTENTOPTIONS_H

