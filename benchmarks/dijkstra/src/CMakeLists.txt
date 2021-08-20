project(dijkstra LANGUAGES C ASM)

# List source files to be compiled
add_executable(${PROJECT_NAME}
    # Benchmark files
    dijkstra/dijkstra.c

    # Other
    portme/printf.c
    portme/printfmap.c
    ${STARTUP_CODE}
    )

# Change target suffix
set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ${OUTPUT_SUFFIX})

target_include_directories(${PROJECT_NAME}
       PUBLIC
       dijkstra
       portme
     )

target_link_libraries(${PROJECT_NAME}
    gcc
    c
    m
    )
