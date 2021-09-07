#include "Configurations.hpp"

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
    cl::desc("Debugging and print-outs")
);

