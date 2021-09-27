project(picojpeg LANGUAGES C ASM)

# List source files to be compiled
add_executable(${PROJECT_NAME}
    # Benchmark files
    picojpeg/picojpeg.c
    picojpeg/picojpegtest.c

    # Other
    portme/printf.c
    portme/printfmap.c
    ${STARTUP_CODE}
    )

# Change target suffix
set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ${OUTPUT_SUFFIX})

target_include_directories(${PROJECT_NAME}
       PUBLIC
       picojpeg
       portme
     )

target_link_libraries(${PROJECT_NAME}
    gcc
    c
    m
    )
