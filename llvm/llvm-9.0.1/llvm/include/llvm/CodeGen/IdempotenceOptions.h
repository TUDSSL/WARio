#ifndef LLVM_CODEGEN_INTERMITTENTOPTIONS_H
#define LLVM_CODEGEN_INTERMITTENTOPTIONS_H

#include "llvm/Support/CommandLine.h"

namespace llvm {

  extern cl::opt<bool> IdempDebug;

  extern cl::opt<bool> IdempForceLRSpill;
  extern cl::opt<bool> IdempCodeGen;
  extern cl::opt<bool> IdempPop;

  extern cl::opt<bool> IdempNoCheckpointCall;
  extern cl::opt<bool> IdempCheckpointReasonMarkers;

  extern cl::opt<bool> IdempStackSpillHittingSet;

} // namespace llvm

#ifdef IDEMP_DEBUG_PRINT
#define dbg() errs()
#else
#define dbg() if (IdempDebug == false) {} else errs()
#endif

#endif // LLVM_CODEGEN_INTERMITTENTOPTIONS_H

