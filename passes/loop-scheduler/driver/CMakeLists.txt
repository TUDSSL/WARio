# Sources
set(PassSrc
    ICS.cpp
    ${CMAKE_SOURCE_DIR}/src/Utils.cpp
    ${CMAKE_SOURCE_DIR}/src/Configurations.cpp
    ${CMAKE_SOURCE_DIR}/src/LoopWriteScheduler.cpp
    ${CMAKE_SOURCE_DIR}/src/LoopUnroller.cpp
)

# Compilation flags
set_source_files_properties(${PassSrc} PROPERTIES COMPILE_FLAGS " -std=c++17 -fPIC")

# Name of the LLVM pass
set(PassName "ICS")

# configure LLVM
find_package(LLVM REQUIRED CONFIG)

set(LLVM_RUNTIME_OUTPUT_INTDIR ${CMAKE_BINARY_DIR}/${CMAKE_CFG_INTDIR}/)
set(LLVM_LIBRARY_OUTPUT_INTDIR ${CMAKE_BINARY_DIR}/${CMAKE_CFG_INTDIR}/)

list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(HandleLLVMOptions)
include(AddLLVM)

message(STATUS "LLVM_DIR IS ${LLVM_CMAKE_DIR}.")

include_directories(
    ${LLVM_INCLUDE_DIRS}
    $ENV{NOELLE}/include
    $ENV{NOELLE}/include/svf
    ${CMAKE_SOURCE_DIR}/include
)

# Declare the LLVM pass to compile
add_llvm_library(${PassName} MODULE ${PassSrc})
