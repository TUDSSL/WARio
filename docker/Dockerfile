# Setup the build emulator and build environment
# Before build:
#   eval $(ssh-agent)
#   ssh-add
#
# Build command:
#   DOCKER_BUILDKIT=1 docker build --ssh default=$SSH_AUTH_SOCK ...
#

FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y build-essential cmake python3 libboost-filesystem-dev  \
    libboost-system-dev libboost-program-options-dev vim git ninja-build clang \
    gcc-arm-none-eabi wget python3-distutils python3-pandas golang

# Change the working directory
WORKDIR /root

# Setup SSH
RUN --mount=type=ssh mkdir -p  ~/.ssh && \
    ssh-keyscan github.com >> ~/.ssh/known_hosts

# Download ICEmu
RUN --mount=type=ssh git clone git@github.com:iiKoe/ICEmu.git
RUN --mount=type=ssh cd ICEmu/ && git submodule update --init --recursive

# Download intermittent-compiler-collection
RUN --mount=type=ssh git clone git@github.com:iiKoe/intermittent-compiler-collection.git
RUN --mount=type=ssh cd intermittent-compiler-collection && \
    git submodule update --init --recursive

# Build ICEmu
RUN cd ICEmu && \
    ./setup-lib.sh && \
    mkdir -p build && cd build && cmake ../ && make -j

# Build the modified llvm
RUN cd intermittent-compiler-collection/llvm && ./download.sh && ./build.sh

# Install gllvm
RUN go get github.com/SRI-CSL/gllvm/cmd/...

# Configure the paths
RUN echo "export PATH=/root/go/bin:\$PATH" >> "$HOME/.env"
RUN echo "source $HOME/intermittent-compiler-collection/setup.sh" >> "$HOME/.env"
RUN echo "export PATH=$HOME/ICEmu/bin:\$PATH" >> "$HOME/.env"

RUN echo "source $HOME/.env" >> "$HOME/.bashrc"

# Build noelle
RUN ["/bin/bash", "-c", "source $HOME/.env && cd $HOME/intermittent-compiler-collection/noelle && ./build.sh"]

# Build the compiler passes
RUN ["/bin/bash", "-c", "source $HOME/.env && cd $HOME/intermittent-compiler-collection/passes/idempotent-regions && make -j"]
