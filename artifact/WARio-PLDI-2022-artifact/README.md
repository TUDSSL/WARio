# [ACM PLDI 2022 Conference](https://pldi22.sigplan.org/) Research Artifact for "WARio: Efficient Code Generation for Intermittent Computing via Compiler Support"

## Background
This is the official description of research artifact for a compiler-support runtime for **intermittently-powered** platforms called WARio. WARIo has been presented first in the following publication.

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

Please note that the accompanying [WARio GitHub repository](https://github.com/TUDSSL/WARio) is *not needed* to evaluate the artifact presented below.

## Getting Stated Guide: Building WARio through a Docker Container
The easiest way to start using WARio is through a Docker container. This way all the required WARio dependencies will be handled correctly and Docker will keep WARio's compilation environment seperate from the host machine. For that reason we provide a set of [Dockerfiles](docker) to build WARio (and all its components) from scratch. Additionally, the Docker containers will be used to build and run all the experiments presented in the paper that introduced WARio. We split WARio into three separate [Docker containers](docker) for ease of use: `wario-source`, `wario-compiler` and `wario-experiments`.

We shall now go through each of the steps needed to build WARio: either using Docker containers, or using a clean Linux distribution.

## System Requirements
First, to guarantee correct WARio execution we recommend `Ubuntu 20.04` operating system. The build process should look the same for other Linux distributions but these were not tested. Second, we recommend that a computer executing WARIo artifacts should have a minimum of 16 GB of main memory. This is needed as building WARio from scratch and running all the experiments is time and memory-consuming. That is, the complete process from buildimg WARIio to getting a result will take *several hours*. For this reason, in addition to the Dockerfile, we provide a prebuild WARio version. Nonetheness, **we recommend using the Dockerfile instead of manual compilation for evaluation** as described below.

## How to Evaluate this Artifact

To evaluate the artifact, you can start from scratch (i.e. when all resources are downloaded from the [WARIo Git repository](https://github.com/TUDSSL/WARio) and the respective code repositiores that WARIo needs) by starting with the `wario-source` Docker file. However, we recommend importing the pre-built docker image for `wario-source`: this way all source code is already in the container and nothing needs to be downloaded from the internet.

**Note:** In the [The Docker Containers](#The-Docker-Containers) section of this document we elaborate on the commands executed in each Dockerfile to build the respective docker containers. 

### Step 1: Import the Docker Container With All the Source Code

Import the `wario-source` image by executing the followig command.
```
$ docker load < docker/wario-source/wario-source.tar.gz
```

You can verify the image is imported by executing
```
$ docker images
```
which should report the `wario-source` container image.

### Step 2: Build the WARio Toolchain and Tools used for Evaluation

The WARio toolchain is build in the `wario-compiler` Dockerfile. To evaluate this artifact we recommend building this container from the Docker file. The `wario-compiler` container builds on the `wario-source` container, so that container should be build or imported first.

To build the `wario-compiler` docker container execute the following command.
```
$ cd wario-compiler
$ ./build.sh
```

### Step 3: Build and Evaluate the Benchmarks

The evaluation of WARio (including compiling the benchmarks using different configurations of WARio, etc.) is done in the `wario-experiments` Docker file. The `wario-experiments` container builds on the `wario-compiler` container, so that container should be build or imported first.

To build the `wario-experiments` docker container execute the following command.
```
$ cd wario-experiments
$ ./build.sh
```

Note that the above command *can take a significant amount of time* (approximately 12 hours depending on the host machine). This is because we evaluate the benchmark configurations in a single threaded manner to make sure the evaluation can be done on a machine with 16 GB memory (strictly only needed for one of the experiments, but to be safe we extend this to the complete evaluation).

### Step 4: Retrieve the WARio Results
After building the `wario-experiments` container, it will hold all the figures and tables in the paper that depend on generated data, that is
* Figures 4, 5, 6 and 7, and
* Tables 1 and 2.

To retrieve these results (and more), first start the `wario-experiments` container by executing the following command.
```
$ cd wario-experiments
$ ./run.sh
```

Next, in another terminal on the host machine execute
```
$ ./get-results.sh
```
to copy all the results from the **running** `wario-experiments` container to the host machine in a directory named `generated`.

The plots used in the WARio paper can be found in `generated/plots`

## Verifying the Claims in the Paper
To verify the results generated by the containers, the results in `generated/plots` can be compared with the respective figures and tables presented in the paper (that is, Figures 4, 5, 6 and 7 as well as Tables 1 and 2). The plots should be nearly identical.

---

## The Docker Containers

In this section we go over each of the Docker containers and describe each of the steps in more detail.

### The `wario-source` Container
This container holds all the source files for all the components to build and evaluate WARio and has all the dependencies installed to correctly build/run them.

The container is build in the following steps.

#### Step 1: Instal the Dependencies
```
# apt-get update && \
    apt-get install -y build-essential cmake python3 libboost-filesystem-dev  \
    libboost-system-dev libboost-program-options-dev vim git ninja-build clang \
    gcc-arm-none-eabi wget golang \
    python3-distutils python3-tabulate python3-pip cm-super dvipng

$ pip install matplotlib==3.5.1
$ pip install pandas==1.4.1
```

#### Step 2: Instal `gllvm`
```
$ go get github.com/SRI-CSL/gllvm/cmd/...
```

#### Step 3: Download WARio
```
$ git clone https://github.com/TUDSSL/WARio.git
$ cd WARio && git submodule update --init --recursive
```

#### Step 4: Download the Remaining Parts of LLVM
```
$ cd WARio/llvm && ./download.sh
```

#### Step 5: Configure the Environment
```
$ echo "export PATH=$HOME/go/bin:\$PATH" >> "$HOME/.env"
$ echo "source $HOME/WARio/setup.sh" >> "$HOME/.env"
$ echo "source $HOME/.env" >> "$HOME/.bashrc"
```

### The `wario-compiler` Container
This container holds a pre-compiled version of all of WARio's components, namely:
* ICEmu emulator (based on [Unicorn](https://github.com/unicorn-engine/unicorn)) used for evaluation,
* LLVM with a modified WARio back-end for ARM,
* [Noelle](https://github.com/scampanoni/noelle) LLVM extension,
* WARio middle-end transformations (LLVM passes).

The container is build in the following steps.

#### Step 1: Build the ICEmu Emulator
WARio uses the ICEmu ARM processor architeture emulator, which is built using [Unicorn](https://github.com/unicorn-engine/unicorn). ICEmu uses several custom plugins to WARio's performance without introducing additional code. To build ICEmu execute the following command.
```
$ cd WARio/icemu
$ ./build.sh
```

#### Step 2: Build LLVM
WARio uses `LLVM version 9.0.1` in combination with a custom backend for ARM Thumb2, where ARM Thumb2 is enabled using several LLVM compiler flags. Additionally, LLVM version 9.0.1 is used to compile [Noelle](https://github.com/scampanoni/noelle) (an LLVM extension) and all the transformations. Parts of LLVM are not in the [WARio GitHub repository](https://github.com/TUDSSL/WARio) repository but are downloaded to keep this repository (relatively) small. To build LLVM execute the following command.
```
$ cd WARio/llvm
$ ./download.sh
$ ./build.sh
```

#### Step 3: Build Noelle
[Noelle](https://github.com/scampanoni/noelle) is a set of extensions to LLVM which provide easy access to _"help build advanced code analyses and transformations"_. It is used intensively by WARio, both for memory analysis and to aid with the loop transformations. Execute the following command to build Noelle.
```
$ cd WARio/noelle
$ ./build.sh
```

#### Step 4: Build WARio
WARio consists of several LLVM transformations and the modified LLVM back-end. We already compiled the WARio back-end when we compiled LLVM in the previous step. To compile the transformations execute the following command.
```
$ cd WARio/passes
$ ./build.sh
```

### The `wario-experiments` Container
This container holds the build versions of all the benchmarks and configurations listed in the paper and holds the evaluation results after running the different benchmarks.

The container is build in the following steps.

#### Step 1: Build and Run the Benchmarks
Building and running the benchmarks in WARio can be done **per benchmark** using the makefiles in [benchmarks/](benchmarks/). Some benchmarks require a significant amount of memory to compile and emulate (primarily `picojpeg`). Because of this, the [`build-run.sh`](benchmarks/build-run.sh) script does not enable multi-threaded compilation. If you have a machine with more than 16 GB of memory, you may consider changing the script's `-j` parameter. The high memory usage results from prioritizing readability and simplicity while developing the transformations and is not a direct effect of the algorithms used by WARio. To build and run the benchmarks execute the following command.
```
$ cd WARio/benchmarks
$ ./build-run.sh
```

#### Step 2: Build and Run the Powertrace Benchmarks
```
$ cd WARio/benchmarks
$ ./benchmark-powertrace.sh
```

#### Step 3: Process the Benchmarks
```
$ cd WARio/benchmarks
$ ./collect.sh
```

#### Step 4: Install the Dependencies to Plot the Results
As this is an "optional" step, and as it requires large packages, we only install the dependencies for plotting here.
```
# apt-get update && apt-get install -y texlive-latex-extra fonts-linuxlibertine
$ pip install jupyterlab==3.2.9
```

#### Step 5: Plot the Results
```
$ cd WARio/plotting
$ ./build.sh
```

---

## Building a Container
You can build a container by navigating to its directory and running the following command.
```
$ ./build.sh
```

## Running a Container Interactively
You can build a container by navigating to its directory by running the following command.
```
$ ./run.sh
```
