project(aes LANGUAGES C ASM)

# List source files to be compiled
add_executable(${PROJECT_NAME}
    # Benchmark files
    aes/aes.c
    aes/test.c

    # Other
    portme/printf.c
    portme/printfmap.c
    ${STARTUP_CODE}
    )

target_compile_definitions(${PROJECT_NAME}
    PUBLIC
    AES256
    #AES192=1
    #AES128
    )


# Change target suffix
set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ${OUTPUT_SUFFIX})

target_include_directories(${PROJECT_NAME}
       PUBLIC
       aes
       portme
     )

target_link_libraries(${PROJECT_NAME}
    gcc
    c
    m
    )
