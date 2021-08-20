cmake_minimum_required(VERSION 3.15)

message("Using toolchain file: ${CMAKE_TOOLCHAIN_FILE}")

project(crc LANGUAGES C ASM)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

# Compiler options for this project
add_compile_options(
    -mfloat-abi=soft
    -ffunction-sections -fdata-sections -fomit-frame-pointer
    -Wall
    -std=c99
    -g
    -O3
    )

# Linker options for this project
add_link_options(
    -mfloat-abi=soft
    -Wl,--gc-sections,--entry,Reset_Handler
    -Wl,-Map=${PROJECT_NAME}.map
    -T ${LINKER_SCRIPT}
    )


add_subdirectory(src)
