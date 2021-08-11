#include "Configurations.hpp"

/*
 * Command line options for pass
 */

cl::opt<bool> NoVerify(
  "fno-verify",
  cl::init(false),
  cl::desc("No verification of runtime methods or transformations")
);

cl::opt<bool> InitExit(
  "init-exit",
  cl::init(false),
  cl::desc("Exit compilation upon initialization --- for debugging")
);

cl::opt<bool> Debug(
  "debug",
  cl::init(false),
  cl::desc("Turn on debugging outputs/prints")
);

cl::opt<bool> LoopUnrollStep(
  "lwc-loop-unroll",
  cl::init(false),
  cl::desc("Execute loop unroll step")
);

cl::opt<unsigned int> LoopUnrollCount(
  "lwc-loop-unroll-count",
  cl::init(2),
  cl::desc("The loop unroll count (default = 2)")
);

cl::opt<unsigned int> LoopUnrollInstructionThreshold(
  "lwc-loop-unroll-threshold",
  cl::init(150),
  cl::desc("The loop unroll instruction threshold (pre-unroll)")
);

cl::opt<bool> LoopScheduleStep(
  "lwc-loop-schedule",
  cl::init(false),
  cl::desc("Execute the ICS loop WAR store schedule step")
);
