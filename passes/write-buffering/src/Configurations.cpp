#include "../include/Configurations.hpp"

cl::opt<bool> ExitingOnInit(
    "exit-on-init",
    cl::init(false), 
    cl::desc("Exit the transformation in doInitialization()")
);

cl::opt<bool> Debug(
    "debug",
    cl::init(false), 
    cl::desc("Debugging and print-outs")
);

