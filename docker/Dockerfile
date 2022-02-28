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
    gcc-arm-none-eabi wget python3-distutils python3-pandas golang python3-tabulate

# Change the working directory
WORKDIR /root

# Clone the WARio directory
RUN git clone https://github.com/TUDSSL/WARio.git

# Get all the submodules
RUN cd WARio && git submodule update --init --recursive

# Build the ICEmu emulator
RUN cd WARio/icemu && ./build.sh

# Build the modified llvm
RUN cd WARio/llvm && ./download.sh && ./build.sh

# Install gllvm (https://github.com/SRI-CSL/gllvm)
RUN go get github.com/SRI-CSL/gllvm/cmd/...

# Configure the paths
RUN echo "export PATH=$HOME/go/bin:\$PATH" >> "$HOME/.env"
RUN echo "source $HOME/WARio/setup.sh" >> "$HOME/.env"

RUN echo "source $HOME/.env" >> "$HOME/.bashrc"

# Build noelle (https://github.com/scampanoni/noelle)
# Bash is specified in order to source the paths
RUN ["/bin/bash", "-c", "source $HOME/.env && cd $HOME/WARio/noelle && ./build.sh"]

# Build the transformations
RUN ["/bin/bash", "-c", "source $HOME/.env && cd $HOME/WARio/passes && ./build.sh"]


##
# All the tools are build, now we compile and run the benchmarks
##

# Build and run the benchmarks (can take a long time)
RUN ["/bin/bash", "-c", "source $HOME/.env && cd $HOME/WARio/benchmarks && ./build-run.sh"]

##
# Plot the results. 
# Optional. Remove this to avoid installing Jupyter Notebook and LaTeX
##

