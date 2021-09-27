project(sha LANGUAGES C ASM)

# List source files to be compiled
add_executable(${PROJECT_NAME}
    # Benchmark files
    sha/sha.c
    sha/main.c

    # Other
    portme/fread.c
    portme/printf.c
    portme/printfmap.c
    ${STARTUP_CODE}
    )

# Change target suffix
set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ${OUTPUT_SUFFIX})

target_include_directories(${PROJECT_NAME}
       PUBLIC
       sha
       portme
     )

target_link_libraries(${PROJECT_NAME}
    gcc
    c
    m
    )

target_compile_definitions(${PROJECT_NAME}
  PUBLIC
  LITTLE_ENDIAN
  )
