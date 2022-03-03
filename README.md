# WARio: Efficient Code Generation for Intermittent Computing via Compiler Support

## Background
This is the official public repository for a compiler-support runtime for **intermittently-powered** platforms called WARio. WARIo has been presented first in the following publication.

```
@article{kortbeek:pldi:2022:wario,
author = {Kortbeek, Vito and Ghosh, Souradip and Hester, Josiah and Campanoni, Simone and Pawe\l{}czak, Przemys\l{}aw},
title = {WARio: Efficient Code Generation for Intermittent Computing via Compiler Support},
journal = {Proc. ACM Conference on Programming Language Design and Implementation},
year = {2022},
month = jun,
volume = {},
number = {},
articleno = {},
numpages = {},
publisher = {Association for Computing Machinery},
address = {New York, NY, USA},
url = {https://doi.org/}
}
```

## Getting Stated Guide: Building WARio through a Docker Container
The easiest way to start using WARio is through a Docker container. This way, all the required WARio dependencies will be handled correctly and Docker will keep WARio's compilation environment seperate from the host machine. For that reason we provide a [Dockerfile](docker) to build WARio and all its components from scratch. Additionally, the Docker container will be used to build and run all the experiments presented in the paper (listed above) that presented WARio. 

We shall now go through each of the steps needed to build WARio: either through the Docker container or in a clean Linux distribution.

### Requirements
First, to guarantee correct WARio execution we recommend `Ubuntu 20.04` operating system. The build process should look the same for other Linux distributions but these were not tested. 

Second, we recommend that your computer should have a minimum of 16 GB of main memory. This is needed as building WARio from scratch and running all the experiments is time and memory-consuming. That is, the complete process from buildimg WARIio to getting a result will take several hours. For this reason, in addition to the Dockerfile, we provide a prebuild WARio version. Nonetheness, ***we recommend using the Dockerfile instead of manual compilation*** as described below. The steps described below are the exact steps specified in the Docker container file and included to provide insight into the components of WARio.

### Step 1: Make Sure to Have the Right Code Dependencies
First, update and install the required packages by executing the following command.
```
$ apt-get update && \
    apt-get install -y build-essential cmake python3 libboost-filesystem-dev  \
    libboost-system-dev libboost-program-options-dev vim git ninja-build clang \
    gcc-arm-none-eabi wget python3-distutils python3-pandas golang python3-tabulate
```

### Step 2: Download WARio
Clone the WARio GitHub repository (i.e. this repository) and all its submodules by executing the following command.
```
$ git clone https://github.com/TUDSSL/WARio.git
$ cd WARio
$ git submodule update --init --recursive
```

### Step 3: Build the ICEmu Emulator
WARio uses the ICEmu ARM processor architeture emulator, which is built using [Unicorn](https://github.com/unicorn-engine/unicorn). ICEmu uses several custom plugins to WARio's performance without introducing additional code. To build ICEmu execute the following command.
```
$ cd WARio/icemu
$ ./build.sh
```

### Step 4: Build LLVM
WARio uses `LLVM version 9.0.1` in combination with a custom backend for ARM Thumb2, where ARM Thumb2 is enabled using several LLVM compiler flags. Additionally, LLVM version 9.0.1 is used to compile [Noelle](https://github.com/scampanoni/noelle) (an LLVM extension) and all the transformations. Parts of LLVM are not in this WARio git repository but are downloaded to keep this repository (relatively) small. To build LLVM execute the following command.
```
$ cd WARio/llvm
$ ./download.sh
$ ./build.sh
```

### Step 5: Install gllvm
To enable whole program optimization (required for [Noelle](https://github.com/scampanoni/noelle)) we use [gllvm](github.com/SRI-CSL/gllvm) to create a single LLVM bitcode file for the whole program during compilation. To install gllvm execute the following command.
```
$ go get github.com/SRI-CSL/gllvm/cmd/...
$ export PATH="$HOME/go/bin:$PATH" 
```

### Step 6: Set up the Environment
Next, you need to setup environment variables before continue building LLVM, Noelle, and WARio by executing the following command.
```
$ source WARio/setup.sh
```

### Step 7: Build Noelle
[Noelle](https://github.com/scampanoni/noelle) is a set of extensions to LLVM which provide easy access to _"help build advanced code analyses and transformations"_. It is used intensively by WARio, both for memory analysis and to aid with the loop transformations. Execute the following command to build Noelle.
```
$ cd WARio/noelle
$ ./build.sh
```

### Step 8: Build WARio
WARio consists of several LLVM transformations and the modified LLVM back-end. We already compiled the WARio back-end when we compiled LLVM in the previous step. To compile the transformations execute the following command.
```
$ cd WARio/passes
$ ./build.sh
```

### Step 9: Build and Run the Benchmarks
Building and running the benchmarks in WARio can be done **per benchmark** using the makefiles in [benchmarks/](benchmarks/). Some benchmarks require a significant amount of memory to compile and emulate (primarily `picojpeg`). Because of this, the [`build-run.sh`](benchmarks/build-run.sh) script does not enable multi-threaded compilation. If you have a machine with more than 16 GB of memory, you may consider changing the script's `-j` parameter. The high memory usage results from prioritizing readability and simplicity while developing the transformations and is not a direct effect of the algorithms used by WARio. To build and run the benchmarks execute the following command.
```
$ cd WARio/benchmarks
$ ./build-run.sh
```

## Artifact Evaluation: Plotting the Results
A set of [Jupyter Notebook](https://jupyter.org/) scripts parse the results and plot them using matplotlib and LaTeX (used for the text generation in matplotlib to match the paper).

One of the Docker containers will generate the results (figures and tables) presented in the paper that introduced WARio. We will now describe the process on how to do it.

# Dockerfiles for WARio

We split WARio into multiple docker containers, depending on what part you need or want to customize/run yourself. Please note that **the containers build upon each other, so make sure to take note of the order.**

Each of the configurations is a directory that the Docker file that generates them and the generated image (in `tar.gz` format) that can be imported into docker.

## The Containers

Below we describe the containers and their relationships. Each of them can be build
using their respective Dockerfile.

### wario-source
This container holds all the source files for all the components to build and
evaluate WARio and has all the dependencies installed to correctly build/run them.

### wario-compiler
*depends on wario-source*
This container holds a pre-compiled version of all of WARio's components, namely the:
* ICEmu emulator (based on Unicorn/QEMU) used for evaluation
* LLVM with a modified WARio back-end for ARM
* Noelle LLVM extension
* WARio middle-end transformations (LLVM passes)

### wario-experiments
*depends on wario-compiler*
This container holds the build versions of all the benchmarks and configurations
listed in the paper and holds the evaluation results after running the different
benchmarks

## Building a Container
You can build a container by navigating to its directory and running:
```
$ ./build.sh
```

## Running a Container Interactively
You can build a container by navigating to its directory and running:
```
$ ./run.sh
```

## Retrieving the Figures and Tables
After building the *wario-experiments* container you can retrieve the generated results, including the Figures and Tables generated in the paper (that depend on the benchmarks).

* Figures 4, 5, 6 and 7
* Tables 1 and 2

To retrieve the generated results, while the  *wario-experiments* container is
running, in another terminal (on the host) run:
```
$ ./get-results.sh
```

This will copy all the results into a directory called `generated`. If you open the folder and see all paper-specific results then congratulations: you have successufully build and reproduced WARio. 
