# Container that builds the WARio compiler
#   * Builds the ICEmu emulator for evaluation (based on Unicorn/QEMU)
#   * Builds LLVM with the custom WARio back-end for ARM
#   * Builds Noelle
#   * Builds all the middle-end transformations for WARio

FROM wario-source

ARG DEBIAN_FRONTEND=noninteractive

# Change the working directory
WORKDIR /root

# Build the ICEmu emulator
RUN cd WARio/icemu && ./build.sh

# Build the modified llvm
RUN cd WARio/llvm && ./build.sh

# Build noelle (https://github.com/scampanoni/noelle)
# Bash is specified in order to source the paths
RUN ["/bin/bash", "-c", "source $HOME/.env && cd $HOME/WARio/noelle && ./build.sh"]

# Build the transformations
RUN ["/bin/bash", "-c", "source $HOME/.env && cd $HOME/WARio/passes && ./build.sh"]
