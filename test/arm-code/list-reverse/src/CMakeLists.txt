
set(DEPENDENCIES
    )

# Source files of libraries and externals
foreach(dep ${DEPENDENCIES})
    list(APPEND DEP_SOURCES "${CMAKE_SOURCE_DIR}/${dep}/*.[cs]")
endforeach()

# List source files to be compiled

# Add executable target
add_executable(${PROJECT_NAME}
    main.c
    list.c
    #printf.c
    #printfmap.c
    ${STARTUP_CODE}
    )

# Change target suffix
set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ${OUTPUT_SUFFIX})

# Compiler options for this project
target_compile_options(${PROJECT_NAME}
    PUBLIC -mfloat-abi=soft
    PUBLIC -ffunction-sections -fdata-sections -fomit-frame-pointer
    PRIVATE -Wall
    PRIVATE -std=c99
    #PRIVATE -g -gdwarf-3
    PRIVATE -O1
    )

# Include directories of libraries and externals
foreach(dep ${DEPENDENCIES})
    target_include_directories(${PROJECT_NAME}
        PRIVATE ${CMAKE_SOURCE_DIR}/${dep}/)
endforeach()

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

# Print size of binary after linking
add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
    COMMAND ${CMAKE_SIZE} ${PROJECT_NAME}${OUTPUT_SUFFIX}
    )

