# Project
cmake_minimum_required(VERSION 3.12)
project(IdempotentExpander)

# Programming languages to use
enable_language(C CXX)

# Find and link with LLVM
find_package(LLVM REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O0 -g -Wall -Weverything")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3 -Wall -Weverything")

set( CMAKE_EXPORT_COMPILE_COMMANDS ON )

# Link with LLVM
include_directories(
    ${LLVM_INCLUDE_DIRS}
    $ENV{NOELLE}/include
    $ENV{NOELLE}/include/svf
    )

add_definitions(${LLVM_DEFINITIONS})
add_definitions(
-D__STDC_LIMIT_MACROS
-D__STDC_CONSTANT_MACROS
#-DDEBUG_PRINT
)
link_directories(${LLVM_LIBRARY_DIRS})

# Prepare the pass to be included in the source tree
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)

# Pass
add_subdirectory(src)
