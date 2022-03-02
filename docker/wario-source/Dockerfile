# Container that holds all the source code needed to build and evaluate WARio

FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y build-essential cmake python3 libboost-filesystem-dev  \
    libboost-system-dev libboost-program-options-dev vim git ninja-build clang \
    gcc-arm-none-eabi wget golang \
    python3-distutils python3-tabulate python3-pip cm-super dvipng

RUN pip install matplotlib==3.5.1
RUN pip install pandas==1.4.1

# Change the working directory
WORKDIR /root

# Install gllvm (https://github.com/SRI-CSL/gllvm)
RUN go get github.com/SRI-CSL/gllvm/cmd/...

# Clone the WARio directory
RUN git clone https://github.com/TUDSSL/WARio.git

# Get all the submodules
RUN cd WARio && git submodule update --init --recursive

# Download the remaining part of LLVM
RUN cd WARio/llvm && ./download.sh

# Configure the environment
RUN echo "export PATH=$HOME/go/bin:\$PATH" >> "$HOME/.env"
RUN echo "source $HOME/WARio/setup.sh" >> "$HOME/.env"
RUN echo "source $HOME/.env" >> "$HOME/.bashrc"
