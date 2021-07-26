project(coremark LANGUAGES C ASM)

# Add executable target
add_executable(${PROJECT_NAME}
    coremark/core_list_join.c
    coremark/core_main.c
    coremark/core_matrix.c
    coremark/core_state.c
    coremark/core_util.c
    icemu/core_portme.c
    icemu/printf.c
    icemu/printfmap.c
    ${STARTUP_CODE}
    )

# Change target suffix
set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ${OUTPUT_SUFFIX})

target_include_directories(${PROJECT_NAME}
       PUBLIC
       ./coremark
       ./icemu/
     )

target_link_libraries(${PROJECT_NAME}
    gcc
    c
    m
    )

get_target_property(MAIN_CFLAGS ${PROJECT_NAME} COMPILE_OPTIONS)
string (REPLACE ";" " " MAIN_CFLAGS_STR "${MAIN_CFLAGS}")

target_compile_definitions(${PROJECT_NAME}
  PUBLIC
  PERFORMANCE_RUN=1
  #ITERATIONS=500
  ITERATIONS=5
  #COMPILER_FLAGS="${MAIN_CFLAGS_STR}"
  COMPILER_FLAGS="a"
  )

