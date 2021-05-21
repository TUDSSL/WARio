libgcc_loc=$(arm-none-eabi-gcc -print-libgcc-file-name)
libgcc_loc=$(dirname "$libgcc_loc")
export CMAKE_LIBGCC_BASE_DIR="$libgcc_loc"

# source this file to configure the toolchain
