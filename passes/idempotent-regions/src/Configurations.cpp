#include "Configurations.hpp"

/*
 * Command line options for pass
 */

cl::opt<bool> NoVerify(
    "fno-verify", cl::init(false),
    cl::desc("No verification of runtime methods or transformations"));

cl::opt<bool> InitExit(
    "init-exit", cl::init(false),
    cl::desc("Exit compilation upon initialization --- for debugging"));

cl::opt<bool> Debug("debug", cl::init(false),
                    cl::desc("Turn on debugging outputs/prints"));

// TODO: set this to false when done with testing __checkpoint_count
cl::opt<bool> InsertCheckpointCount("cp-count", cl::init(false),
                    cl::desc("Turn on the insertion of __checkpoint_count"));

cl::opt<bool> UnitPlacementCost("cp-unit-placement-cost", cl::init(false),
                    cl::desc("Change the placement cost to 1 for all locations"));

cl::opt<bool> BruteForceHittingSet("cp-brute-force-hitting-set", cl::init(false),
                    cl::desc("Brute force the hitting set"));

cl::opt<bool> UseRatchetImplementation("cp-ratchet", cl::init(false),
                    cl::desc("Run the original ratchet implementation"));

cl::opt<bool> InsertCheckpointIntrinsic("cp-intrinsic", cl::init(true),
                    cl::desc("Insert idemp intrinsic calls at checkpoint locations"));

cl::opt<bool> InsertCheckpointBeforeCall("cp-before-call", cl::init(false),
                    cl::desc("Insert a checkpoint before each call"));

cl::opt<bool> InsertCheckpointAfterCall("cp-after-call", cl::init(false),
                    cl::desc("Insert a checkpoint after each call"));

cl::opt<bool> UseMoreInstructionsInPath("cp-big-path", cl::init(false),
                    cl::desc("Add more instructions to the Path"));
