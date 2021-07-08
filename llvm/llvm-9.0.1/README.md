# Added files:
* llvm/include/llvm/CodeGen/IdempotenceOptions.h
* llvm/lib/CodeGen/IdempotenceOptions.cpp
  * Commadline options specific for intermittent code generation
* llvm/include/llvm/CodeGen/MachineIdempotentRegions.h
* llvm/lib/CodeGen/MachineIdempotentRegions.cpp

# Modified files:
* llvm/llvm-9.0.1/llvm/include/llvm/CodeGen/ISDOpcodes.h
  * Add IDEMP instruction
* llvm/llvm-9.0.1/llvm/include/llvm/CodeGen/Passes.h
  * Add MachineIdempotentRegions Pass
* llvm/llvm-9.0.1/llvm/include/llvm/CodeGen/TargetInstrInfo.h
  * Add virtual idempotent region helper functions
* llvm/llvm-9.0.1/llvm/include/llvm/IR/Intrinsics.td
  * Add the `int_idemp` intrinsic
* llvm/llvm-9.0.1/llvm/include/llvm/InitializePasses.h
  * Declare the MachineIdempotentRegions pass
* llvm/llvm-9.0.1/llvm/include/llvm/Target/TargetSelectionDAG.td
  * Add the DAG Idemp for lowering
* llvm/llvm-9.0.1/llvm/lib/CodeGen/CMakeLists.txt
  * Add the MachineIdempotentRegions.cpp file to the CMakeLists
* llvm/llvm-9.0.1/llvm/lib/CodeGen/CodeGen.cpp
  * Initialize the MachineIdempotentRegions pass
* llvm/llvm-9.0.1/llvm/lib/CodeGen/SelectionDAG/SelectionDAGBuilder.cpp
  * Convert the idemp intrinsic to a IDEMP instruction
* llvm/llvm-9.0.1/llvm/lib/CodeGen/TargetPassConfig.cpp
  * Add the MachineIdempotentRegions pass
* llvm/llvm-9.0.1/llvm/lib/Target/ARM/ARMBaseInstrInfo.cpp
  * Implement the virtual functions defined in TargetInstrInfo.h
  * isIdempBoudary, insertIdempBoundary, insertCheckpoint, replaceWithIdempPop
* llvm/llvm-9.0.1/llvm/lib/Target/ARM/ARMBaseInstrInfo.h
  * Declare that we will overwrite the virtual functions in TargetInstrInfo.h
* llvm/llvm-9.0.1/llvm/lib/Target/ARM/ARMInstrFormats.td
  * Define the IdempInst instruction format
* llvm/llvm-9.0.1/llvm/lib/Target/ARM/ARMInstrInfo.td
  * Define the IDEMP instruction
