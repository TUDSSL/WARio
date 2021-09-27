cmake_minimum_required(VERSION 3.15)

message("Using toolchain file: ${CMAKE_TOOLCHAIN_FILE}")

project(picojpeg LANGUAGES C ASM)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

# Optionally overwrite the default optmization level
if (NOT DEFINED OPT_LEVEL)
    message(STATUS "Using default opt-level -O3")
    set(OPT_LEVEL "-O3")
else()
    message(STATUS "Using opt-level ${OPT_LEVEL}")
endif()

# Compiler options for this project
add_compile_options(
    -mfloat-abi=soft
    -ffunction-sections -fdata-sections -fomit-frame-pointer
    -Wall
    -std=c99
    -g
    ${OPT_LEVEL}
    )

# Linker options for this project
add_link_options(
    -mfloat-abi=soft
    -Wl,--gc-sections,--entry,Reset_Handler
    -Wl,-Map=${PROJECT_NAME}.map
    -T ${LINKER_SCRIPT}
    )


add_subdirectory(src)
