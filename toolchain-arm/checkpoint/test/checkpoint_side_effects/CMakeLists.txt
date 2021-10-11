cmake_minimum_required(VERSION 3.15)

message("Using toolchain file: ${CMAKE_TOOLCHAIN_FILE}")

project(checkpoint_test LANGUAGES C ASM)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

# Add executable target
add_executable(${PROJECT_NAME}
    checkpoint_test.c
    ../../checkpoint.c
    ${STARTUP_CODE}
    )

target_include_directories(${PROJECT_NAME}
    PUBLIC
    "../../"
    )

# Change target suffix
set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ${OUTPUT_SUFFIX})

# Compiler options for this project
target_compile_options(${PROJECT_NAME}
    PUBLIC -mfloat-abi=soft
    PUBLIC -ffunction-sections -fdata-sections -fomit-frame-pointer
    PRIVATE -Wall
    PRIVATE -std=c99
    PRIVATE -g
    PRIVATE -O1
    PRIVATE -DNO_CHECKPOINT_STARTUP # Disable the normal startup checkpoints
    )

# Linker options for this project
target_link_options(${PROJECT_NAME}
    PUBLIC -mfloat-abi=soft
    PUBLIC -Wl,--gc-sections,--entry,Reset_Handler
    PUBLIC -Wl,-Map=${PROJECT_NAME}.map
    PUBLIC -T ${LINKER_SCRIPT}
    )

target_link_libraries(${PROJECT_NAME}
    c
    m
    )
