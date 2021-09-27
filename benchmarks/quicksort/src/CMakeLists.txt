# Add executable target
add_executable(${PROJECT_NAME}
    main.c
    ${STARTUP_CODE}
    )

# Change target suffix
set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ${OUTPUT_SUFFIX})

# Optionally overwrite the default optmization level
if (NOT DEFINED OPT_LEVEL)
    message(STATUS "Using default opt-level -O3")
    set(OPT_LEVEL "-O3")
else()
    message(STATUS "Using opt-level ${OPT_LEVEL}")
endif()

# Compiler options for this project
target_compile_options(${PROJECT_NAME}
    PUBLIC -mfloat-abi=soft
    PUBLIC -ffunction-sections -fdata-sections -fomit-frame-pointer
    PRIVATE -Wall
    PRIVATE -std=c99
    PRIVATE -g
    PRIVATE ${OPT_LEVEL}
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
