# WARio: Efficient Code Generation for Intermittent Computing via Compiler Support

## Background
This is the official public repository for a compiler-support runtime for **intermittently-powered** platforms called WARio. WARIo has been presented first in the following publication.

```
@article{kortbeek:pldi:2022:wario,
author = {Kortbeek, Vito and Ghosh, Souradip and Hester, Josiah and Campanoni, Simone and Pawe\l{}czak, Przemys\l{}aw},
title = {},
journal = {Proc. ACM Conference on Programming Language Design and Implementation},
year = {2022},
month = jun,
volume = {},
number = {},
articleno = {},
numpages = {},
publisher = {Association for Computing Machinery},
address = {New York, NY, USA},
url = {https://doi.org/XYZ}
}
```

## Getting Stated Guide: Building WARio through a Docker Container
The easiest way to start using WARio is through a Docker container. This way, all the required WARio dependencies will be handled correctly and Docker will keep WARio's compilation environment seperate from the host machine. For that reason we provide a [Dockerfile](docker/Dockerfile) to build WARio and all its components from scratch. Additionally, the Docker container will be used to build and run all the experiments presented in the paper (listed above) that introduced WARio. 

We shall now go through each of the steps needed to build WARio through the Docker container.

### Requirements
WARio was built and tested on `Ubuntu 20.04` operating system. The build process should translate to other Linux distributions, but these are not tested.

Building WARio from scratch and running all the experiments is time and memory-consuming. We recommend using a system with a minimum of 16 GB of main memory. The complete process will take several hours. In addition to the Dockerfile, we provide a prebuild version.

*** We recommend using the Dockerfile instead of manual compilation as described below! The steps described below are the exact steps specified in the Dockerfile and included to provide insight into the components of WARio. ***

### Dependencies
First, update and install the required packages executing the following command.
```
# apt-get update && \
    apt-get install -y build-essential cmake python3 libboost-filesystem-dev  \
    libboost-system-dev libboost-program-options-dev vim git ninja-build clang \
    gcc-arm-none-eabi wget python3-distutils python3-pandas golang python3-tabulate
```

### Downloading WARio
Clone the WARio GitHub repository and all its submodules.
```
$ git clone https://github.com/TUDSSL/WARio.git
$ cd WARio
$ git submodule update --init --recursive
```

### Building the ICEmu Emulator
WARio uses the ICEmu ARM emulator, which is built using [Unicorn](https://github.com/unicorn-engine/unicorn) (based on QEMU).
ICEmu uses several custom plugins to WARio's performance without introducing additional code.
```
$ cd WARio/icemu
$ ./build.sh
```

### Building LLVM
WARio uses LLVM version 9.0.1 in combination with a custom backend for ARM Thumb2, which is enabled using several compiler flags.
Additionally, LLVM version 9.0.1 is used to compile Noelle (an LLVM extension) and all the transformations.
Parts of LLVM are not in this git repository but are downloaded to keep this repository (relatively) small.
```
$ cd WARio/llvm
$ ./download.sh
$ ./build.sh
```

### Installing gllvm
To enable whole program optimization (required for Noelle), we use [gllvm](github.com/SRI-CSL/gllvm) to create a single LLVM bitcode file for the whole program during compilation.
```
$ go get github.com/SRI-CSL/gllvm/cmd/...
$ export PATH="$HOME/go/bin:$PATH" 
```

### Setting up the Environment
We will first set up some environment variables before we continue building LLVM, Noelle, and WARio.
```
$ source WARio/setup.sh
```

### Building Noelle
[Noelle](https://github.com/scampanoni/noelle) is a set of extensions to LLVM which provide easy access to _"help build advanced code analyses and transformations"_. It is used intensively by WARio, both for memory analysis and to aid with the loop transformations.
```
$ cd WARio/noelle
$ ./build.sh
```

### Building WARio
WARio consists of several LLVM transformations and the modified LLVM back-end. We already compiled the WARio back-end when we compiled LLVM. Now we compile the transformations.
```
$ cd WARio/passes
$ ./build.sh
```

### Building and Running the Benchmarks
Building and running the benchmarks in WARio can be done per benchmark using the makefiles in [benchmarks/](benchmarks/). Some benchmarks require a significant amount of memory to compile and emulate (primarily `picojpeg`). Because of this, the [`build-run.sh`](benchmarks/build-run.sh) script does not enable multi-threaded compilation. If you have a machine with more than 16GB of memory, you may consider changing the script's `-j` parameter. The high memory usage results from prioritizing readability and simplicity while developing the transformations and is not a direct effect of the algorithms used by WARio.
```
$ cd WARio/benchmarks
$ ./build-run.sh
```

### Artifact Evaluation: Plotting the Results
During the emulation of the benchmarks a lot of information is collected and analyzed. A set of [Jupyter Notebook](https://jupyter.org/) scripts parse the results and plot them using matplotlib and LaTeX (used for the text generation in matplotlib to match the paper).

```
TODO
```
