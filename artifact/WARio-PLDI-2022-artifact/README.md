# ACM PLDI 2022 Conference Research Artifact for "WARio: Efficient Code Generation for Intermittent Computing"

## Background
This is the official description of research artifact for a compiler-support runtime for **intermittently-powered** platforms called WARio. WARio has been presented at the ACM PLDI 2022 conference.

Please note that the accompanying [WARio GitHub repository](https://github.com/TUDSSL/WARio) is *not needed* to evaluate the artifact presented below.

## Getting Stated Guide: Building WARio Through Docker Containers
The easiest way to start using WARio is through a Docker container. This way, all the required WARio dependencies will be handled correctly, and Docker will keep WARio's compilation environment separate from the host machine. For that reason, we provide a set of [Dockerfiles](docker) to build WARio (and all its components) from scratch. Additionally, the Docker containers will be used to build and run all the experiments presented in the paper that introduced WARio. We split WARio into three separate [Docker containers](docker) for ease of use: `wario-source`, `wario-compiler` and `wario-experiments`. For each container, a prebuilt docker image is available.

* `wario-source` Downloads all the source code for WARio and its dependencies, and installs any dependencies needed to compile and run both WARio and all the benchmarks.
* `wario-compiler` Compiles WARio and its dependencies.
* `wario-experiments` Compiles and runs the benchmarks in the paper and generates all non-static figures and tables.

We shall now go through each of the steps needed to build WARio: either using Docker containers, or using a clean Linux distribution.

## System Requirements
First, to guarantee correct WARio evaluation we recommend using `Ubuntu 20.04` or Docker. The build process should look the same for other Linux distributions but these were not tested. Second, we recommend a minimum of 50GB of free storage to hold all the Docker container images, both the downloaded ones and the images built using Docker. Third, we recommend that a computer executing the WARio artifacts should have a minimum of 16 GB of main memory. This is needed as building WARio from scratch and running all the experiments is time and memory-consuming. That is, the complete process from building WARio to getting all the results will take **up to 12 hours**. For this reason, in addition to the Dockerfile, we provide a prebuild WARio version. Nonetheness, **we recommend using the Dockerfile instead of manual compilation for evaluation** as described below.

## How to Evaluate this Artifact

Before evaluating the artifact, we need to download the `docker.zip` file from the Zenodo archive. Within the `docker.zip` file, three directories hold the three Dockerfiles (`wario-source`, wario-compiler` and `wario-experiments), their respective prebuild images, and some accompanying bash scripts.

To evaluate the artifact, you can start from scratch (i.e., when all resources are downloaded from the [WARio Git repository](https://github.com/TUDSSL/WARio) and the respective code repositories that WARio needs) by starting with the `wario-source` Docker file. However, we recommend importing the pre-built Docker image for `wario-source`: this way, all source code is already in the container, and nothing needs to be downloaded from the internet.

**Note:** In the [The Docker Containers](#The-Docker-Containers) section of this document we elaborate on the commands executed in each Dockerfile to build the respective docker containers. 

### Preparation: Extracting the Dockerfiles and Images
After downloading the `docker.zip` file from the Zenodo archive and extract it.
```
$ unzip docker.zip
```

### Step 1: Import the Docker Container With All the Source Code

Import the `wario-source` image by executing the followig command. __[time estimate: 15 minutes]__
```
$ docker load < docker/wario-source/wario-source.tar.gz
```

You can verify the image is imported by executing
```
$ docker images
```
which should report the `wario-source` container image.

### Step 2: Build the WARio Toolchain and Tools used for Evaluation

The WARio toolchain is built in the `wario-compiler` Dockerfile. The `wario-compiler` container builds on the `wario-source` container, so that container should be built or imported first. We recommend building this container from the Docker file to evaluate this artifact.

To build the `wario-compiler` docker container execute the following command.  __[time estimate: 60 minutes]__
```
$ cd wario-compiler
$ ./build.sh
```

### Step 3: Build and Evaluate the Benchmarks

The evaluation of WARio (including compiling the benchmarks using different configurations of WARio, etc.) is done in the `wario-experiments` Docker file. The `wario-experiments` container builds on the `wario-compiler` container, so that container should be build or imported first.

To build the `wario-experiments` docker container execute the following command. __[time estimate: 12 hours]__
```
$ cd wario-experiments
$ ./build.sh
```

Note that the above command *can take a significant amount of time* (approximately 12 hours depending on the host machine). This is because we evaluate the benchmark configurations in a single threaded manner to make sure the evaluation can be done on a machine with 16 GB memory (strictly only needed for one of the experiments, but to be safe we extend this to the complete evaluation).

### Step 4: Retrieve the WARio Results and Verify the Claims in the Paper
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

The plots used in the WARio paper can be found in `generated/plots`. To verify the results generated by the containers, the results in `generated/plots` can be compared with the respective figures and tables presented in the paper (that is, Figures 4, 5, 6 and 7 as well as Tables 1 and 2). The plots should be nearly identical. Any changes between the `generated/plots` data and the ones found in the paper are due to randomness in the generated data.

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

#### Step 1: Build the ICEmu Emulator __[time estimate: 10 minutes]__
WARio uses the ICEmu ARM processor architeture emulator, which is built using [Unicorn](https://github.com/unicorn-engine/unicorn). ICEmu uses several custom plugins to WARio's performance without introducing additional code. To build ICEmu execute the following command.
```
$ cd WARio/icemu
$ ./build.sh
```

#### Step 2: Build LLVM __[time estimate: 45 minutes]__
WARio uses `LLVM version 9.0.1` in combination with a custom backend for ARM Thumb2, where ARM Thumb2 is enabled using several LLVM compiler flags. Additionally, LLVM version 9.0.1 is used to compile [Noelle](https://github.com/scampanoni/noelle) (an LLVM extension) and all the transformations. Parts of LLVM are not in the [WARio GitHub repository](https://github.com/TUDSSL/WARio) repository but are downloaded to keep this repository (relatively) small. To build LLVM execute the following command.
```
$ cd WARio/llvm
$ ./download.sh
$ ./build.sh
```

#### Step 3: Build Noelle __[time estimate: 10 minutes]__
[Noelle](https://github.com/scampanoni/noelle) is a set of extensions to LLVM which provide easy access to _"help build advanced code analyses and transformations"_. It is used intensively by WARio, both for memory analysis and to aid with the loop transformations. Execute the following command to build Noelle.
```
$ cd WARio/noelle
$ ./build.sh
```

#### Step 4: Build WARio __[time estimate: 5 minutes]__
WARio consists of several LLVM transformations and the modified LLVM back-end. We already compiled the WARio back-end when we compiled LLVM in the previous step. To compile the transformations execute the following command.
```
$ cd WARio/passes
$ ./build.sh
```

### The `wario-experiments` Container
This container holds the build versions of all the benchmarks and configurations listed in the paper and holds the evaluation results after running the different benchmarks.

The container is build in the following steps.

#### Step 1: Build and Run the Benchmarks  __[time estimate: 10 hours]__
Building and running the benchmarks in WARio can be done **per benchmark** using the makefiles in [benchmarks/](benchmarks/). Some benchmarks require a significant amount of memory to compile and emulate (primarily `picojpeg`). Because of this, the [`build-run.sh`](benchmarks/build-run.sh) script does not enable multi-threaded compilation. If you have a machine with more than 16 GB of memory, you may consider changing the script's `-j` parameter. The high memory usage results from prioritizing readability and simplicity while developing the transformations and is not a direct effect of the algorithms used by WARio. To build and run the benchmarks execute the following command.
```
$ cd WARio/benchmarks
$ ./build-run.sh
```

#### Step 2: Build and Run the Powertrace Benchmarks __[time estimate: 60 minutes]__
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

#### Step 5: Plot the Results __[time estimate: 5 minutes]__
```
$ cd WARio/plotting
$ ./build.sh
```

---

## Importing a Prebuilt Image
You can load any of the three WARio images availible in the `docker.zip` file (instead of building them).
```
$ docker load < docker/wario-source/wario-source.tar.gz
$ docker load < docker/wario-compiler/wario-compiler.tar.gz
$ docker load < docker/wario-experiments/wario-experiments.tar.gz
```

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

---

## How to use WARio: A Step By Step Example
We will now explan how to use WARio for your own project. Our explanation will be based on a small example. Therein, we will show the difference between a `CMake`-based embedded ARM application that uses "standard" LLVM, and the one using WARio--allowing to create an intermittently-executable version of the embedded ARM application.

### WARio Compilation Flow
For a typical application, each C source file is compiled separately to an object file. At the end of the compilation process, these C source files are linked into an `.elf.` file. WARio does things slightly different: WARio uses the *whole program* analysis needed to improve the PDG results. Therefore, we require an LLVMIR file that holds *all* the source code instead of separate object files. Therefore, we first use [gllvm](https://github.com/SRI-CSL/gllvm) to compile a special `.elf` file that holds the whole program LLVMIR, which we then extract. Next, we apply our transformations on this "whole program" LLVMIR. After all the transformations are applied, we generate an intermittently executable version of the program.

#### How to Convert an Application to use WARio

We created a drop-in replacement script for `clang` to simplify the compilation process to make the *C to WARio-transformed C* transition as straightforward as possible. The script that manages all the steps in the compilation flow is `iclang` located in the directory listed below.
```
 WARio/scripts/iclang
```
With `iclang` the transition from a typical CMake-based ARM application compiled with LLVM, to one compiled with WARio is as simple as specifying `iclang` as the C compiler instead of `clang` in the `toolchain.cmake` file.
An example of this can be seen in the following file.
```
WARio/toolchain-arm/toolchain.cmake:16
```
Please note, however, that to configure WARio, some environment variables have to be configured. This is needed to make benchmarking as easy as possible, as we can use the same compilation commands but with different environment variables.

#### How to Compile `quicksort` with WARio
To demonstrate how to compile a demo application with WARio, we will compile a small `quicksort` application located in the following directory.
```
WARio/benchmarks/quicksort
```
Again, the directory above does not hold any WARio-specific commands; this is all handled by the `iclang` script, which is set as the compiler in the toolchain file we will specify.

We will first compile `quicksort` with the `R-PDG` configuration (i.e., applying the `PDG Checkpoint Inserter` and *minimal back-end transformations*). This example assumes that LLVM and all the WARio transformations are compiled. Hence we will be starting from the `wario-compiler` docker image.

First, run the `wario-compiler` docker image interactively.
```
$ docker run -it --rm wario-compiler
```
Next, navigate to the `quicksort` project.
```
$ cd WARio/benchmarks/quicksort
```

To set up the environment for a certain configuration (e.g., `R-PDG` or `Loop Write Clusterer` as seen in the paper in Figure 4 and 5), we can use the `WARio/scripts/benchmark-build` script to set all the environment variables associated with the configuration. We can also do this manually, but we will use the script instead. For details on how to configure the environment variables for `iclang` manually, and their purpose, see the [`iclang` Configuration](#`iclang` Configuration). To get all the possible targets of `WARio/scripts/benchmark-build`, open the script or run `benchmark-build targets`.

The mapping from the targets to the paper (Figure 4 and 5) is as follows:
* `uninstrumented` - the plain C version (i.e., no intermittent execution support)
* `opt-ratchet` - Ratchet
* `opt-baseline` - `R-PDG`
* `opt-reducepop` - `Epilog Optimizer`
* `opt-writebuf` - `Write Clusterer`
* `opt-loop` - `Loop Write Clusterer`
* `op-all` - WARio
* `opt-all-expander` - `WARio+Expander`

Again, custom configurations are possible by manually setting the environment variables.

As we want to compile `quicksort` using the `R-PDG` configuration, i.e., `opt-baseline`, we will specify this as the build target. From within the `quicksort` directory (i.e., `WARio/benchmarks/quicksort`), run the following command.
```
$ benchmark-build opt-baseline
```

Internally, `benchmark-build` sets the environment variables for `iclang`, creates a build directory, and calls `cmake` in the build directory using the toolchain file (i.e, `cmake -DCMAKE_TOOLCHAIN_FILE="/root/WARio/toolchain-arm/toolchain.cmake" ../`). As a last step, `benchmark-build` calls `make` from within the build directory. At this point, there should be a directory called `build-opt-baseline` in `WARio/benchmarks/quicksort`. To run the generated `.elf` file in the emulator, we can navigate to the build directory and run `run-elf` (`WARio/scripts/run-elf`) to run the emulator, i.e.:
```
$ cd build-opt-baseline
$ run-elf quicksort.elf
```
The output will show that the benchmark took approximately 2837 clock cycles, and there were a total of 25 checkpoints executed. Additionally the breakdown of the checkpoint types are listed.

To close out this quick demonstration, we will also compile quicksort using the WARio configuration, i.e., `opt-all` to show that it contains fewer checkpoints (although, for such a small application, the difference is minimal and is here for the purpose of illustration only).

To compile and run the WARio version of `quicksort`, navigate to `WARio/benchmarks/quicksort` and execute the following commands.
```
$ benchmark-build opt-all
$ cd build-opt-all
$ run-elf quicksort.elf
```
The output will show that the benchmark took approximately 2361 clock cycles (476 cycles less than the baseline), and there were 18 checkpoints executed (7 less than the baseline).

Additionally, the emulator will show zero remaining WAR violations detected for both quicksort variations. There should not be any WAR violations in all intermittently executable applications. In contrast, if we run an uninstrumented version of `quicksort`, the emulator will report multiple WAR violations. You can verify this by running the uninstrumented version of quicksort available in both `build` directories. 
```
$ cd build-opt-all
$ run-elf quicksort.uninstr.elf
```
During compilation, `iclang` always creates an uninstrumented version of the application using the exact same compiler flags and whole program optimization for a fair comparison.

To run the program intermittently, i.e., with power failures, we can use the `run-powertrace` script (`WARio/scripts/run-powertrace`). This script takes three arguments, the power on time in cycles (i.e., the number of cycles between power failures), a stdev (currently unused), the `.elf` file, and the output directory for the intermittency statistics.

To run our `quicksort` example intermittently with power failures every 500 clock cycles, execute the following commands.
```
$ mkdir powertrace-test
$ run-powertrace 500 0 quicksort.elf powertrace-test
```

The emulator will output how many cycles were executed, including re-execution due to power failures. This example ran for 2780 cycles, compared to 2361 without power failures. This means that the re-execution cost of this example was 419 cycles. Additionally, the emulator will show how many times the system was reset due to power failures, which should be 4 in this example.

## Files Generated During Compilation
WARio (through `iclang`) generates many intermediate files in the `build` directory during compilation. Every time a transformation is performed on the LLVMIR, `iclang` saves the input IR as `<project>-<transformation>-input.ll`, and the IR after the transformation is saved as `<project>-<transformation>.ll`. Additionally, the output generated by the transformation (e.g., statistics) is stored as `<project>-<transformation>.txt`. Note that these files are created even if the transformation is not applied. In this case, the input and output IR are identical. This way, every step during the compilation is stored, which aids in debugging and understanding of the transformation. 

You can see the generated files in `WARio/benchmarks/quicksort/build-op-all`. For example, `quicksort-idemp-input.ll` holds the IR before the checkpoint placement, `quicksort-idemp.ll` holds the IR after the checkpoint placement, and `quicksort-idemp.txt` holds all the debug information related to the checkpoint placement. Note that some of these debug files can become very large for the actual benchmarks.

## Files Generated During Execution
Additional files holding statistics are generated in the `build` directory during execution by the emulator (`ICEmu`). These files contain data that is eventually used to create the figures. The files generated are:
* `quicksort.elf.stdout` - holds the program's output (if any);
* `quicksort.elf.callcount.csv` - contains how often a certain checkpoint type was executed;
* `quicksort.elf.callsitecount.csv` - contains the locations of checkpoints and how often the checkpoint was executed;
* `quicksort.elf.callfrequency.csv` - the number of cycles when a checkpoint occurred and the difference between the previous checkpoint and the current one;
* `quicksort.elf.wars` - holds the locations of any remaining WAR violations (should be zero, except for the `uninstrumented` version of a benchmark);
* `quicksort.elf.cyclecount` - contains the number of executed clock cycles;
* `quicksort.elf.instructionprofiling.csv` - Used internally for profiling.

---
## WARio Source Code Overview

WARio is a collection of compiler transformations or "passes" that optimize code for checkpoint placement and eventually place checkpoints. You can download the WARio source code, `code.zip` from the Zenodo archive or navigate it by interactively running the `wario-source` docker container.
Some of WARio's transformations operate in the middle-end, and some in the back-end. Each of the transformations is presented below.

### The Middle-End Transformations
Transformations in the middle-end are implemented as "plugins" for LLVM and operate directly on the LLVMIR files; You can build each middle-end transformation by running `make` in the respective root directory (e.g., `WARio/passes/loop-scheduler`), or alternitively, by running the `build.sh` script in `WARio/passes` to build all the transformation at once. 

### Loop Write Clusterer
This transformation clusters write operations in loops together to reduce the number of required checkpoints to resolve all WAR violations. You can find the code for this transformation in the following directory.
```
WARio/passes/loop-scheduler
```
The transformation consists of two steps. First, candidate loops are detected and unrolled in `WARio/passes/loop-scheduler/src/LoopUnroller.cpp`, next they are transformed in `WARio/passes/loop-scheduler/src/LoopWriteScheduler.cpp`

### Expander
This transformation inlines or expands functions that might reduce the number of required checkpoints to resolve all WAR violations. You can find the code for this transformation in the following directory.
```
WARio/passes/idempotent-expander
```

### Write Clusterer
This transformation attempts to cluster writes throughout the program and not limiting itself to loops, as is the case with the `Loop Write Clusterer`. You can find the code for this transformation in the following directory. 
```
WARio/passes/write-buffering
```

### (PDG) Checkpoint Inserter
This transformation places the checkpoint intrinsics, i.e., temporary markers that the back end will transform into actual checkpoints. First the original Ratchet checkpoint placement code is applied and second the WARio version, which uses a more accurate alias analysis through the [Noelle](https://github.com/scampanoni/noelle) PDG to reduce the number of required checkpoints. You can find the code for this transformation in the following directory.
```
WARio/passes/idempotent-regions
```

### The Back-End Transformations
The transformations in the back-end are implemented directly in the ARM back end of LLVM. Its purpose is to place the final checkpoints for WAR violations introduced in the back-end or violations that the middle-end can not handle. You can find the root of the WARio version of LLVM (with the modified ARM back-end) in the following directory
```
WARio/llvm
```
together with two scripts, `download.sh` and `build.sh`. The download script is only used once to retrieve source code for LLVM components that we did not modify (to reduce the repository size). The build script builds LLVM using the recommended flags. Below, we listed all the files that are either added or modified to make it easier to find them within the LLVM source code.

### LLVM Extensions and Modifications

We added the following files to LLVM (root is `WARio/llvm/llvm-9.0.1/`):
* `llvm/include/llvm/CodeGen/IdempotenceOptions.h`
* `llvm/lib/CodeGen/IdempotenceOptions.cpp`
  * Commadline options specific for intermittent code generation:
* `llvm/include/llvm/CodeGen/MachineIdempotentRegions.h`
* `llvm/lib/CodeGen/MachineIdempotentRegions.cpp`
Moreover, we have modfified the following files (root is `WARio/llvm/llvm-9.0.1/`):
* `llvm/include/llvm/CodeGen/ISDOpcodes.h`
  * Add IDEMP instruction
* `llvm/include/llvm/CodeGen/Passes.h`
  * Add MachineIdempotentRegions Pass
* `llvm/include/llvm/CodeGen/TargetInstrInfo.h`
  * Add virtual idempotent region helper functions
* `llvm/include/llvm/IR/Intrinsics.td`
  * Add the `int_idemp` intrinsic
* `llvm/include/llvm/InitializePasses.h`
  * Declare the MachineIdempotentRegions pass
* `llvm/include/llvm/Target/TargetSelectionDAG.td`
  * Add the DAG Idemp for lowering
* `llvm/lib/CodeGen/CMakeLists.txt`
  * Add the `MachineIdempotentRegions.cpp` file to the CMakeLists
* `llvm/lib/CodeGen/CodeGen.cpp`
  * Initialize the MachineIdempotentRegions pass
* `llvm/lib/CodeGen/SelectionDAG/SelectionDAGBuilder.cpp`
  * Convert the idemp intrinsic to a IDEMP instruction
* `llvm/lib/CodeGen/TargetPassConfig.cpp`
  * Add the MachineIdempotentRegions pass
* `llvm/lib/Target/ARM/ARMBaseInstrInfo.cpp`
  * Implement the virtual functions defined in `TargetInstrInfo.h`
  * isIdempBoudary, insertIdempBoundary, insertCheckpoint, replaceWithIdempPop
* `llvm/lib/Target/ARM/ARMBaseInstrInfo.h`
  * Declare that we will overwrite the virtual functions in `TargetInstrInfo.h`
* `llvm/lib/Target/ARM/ARMInstrFormats.td`
  * Define the IdempInst instruction format
* `llvm/lib/Target/ARM/ARMInstrInfo.td`
  * Define the IDEMP instruction
* `llvm/lib/Target/ARM/ARMFrameLowering.cpp`
  * Adds idempotent pops (break ldmia instructions)
  * Adds checkpoints before stack decreases (return)
* `llvm/lib/Target/ARM/ARMInstrThumb2.td`
  * Adds idempotent alternative pseudo instructions implemented in
    `ARMBaseInstrInfo` and also used in `FrameLowering`

---
## `iclang` Configuration

`iclang` is the wrapper script for clang that applies different transformations depending on the configuration. This configuration is done by setting environment variables. For an example of __how to use__ `iclang`, please read the (Step By Step Example)[## How to use WARio: A Step By Step Example] section of this README.

These configuration environment variables instruct `iclang` to apply middle-end transformations or enable back-end features by providing command-line options to the modified `clang` build. If an environment variable is either not set or empty, it is ignored by `iclang`.

The possible environment variables are:
* `ICLANG_PASS_IDEMP_FLAGS` - enables the _(PDG) Checkpoint Inserter_ transformation
  * `-idemp` - enables checkpoint placement
  * `-cp-ratchet` - places checkpoints using the Ratchet source code directly (default is WARio using PDG)
* `ICLANG_PASS_LOOP_UNROLL_FLAGS` - enables the loop unrolling of the _Loop Write Clusterer_ transformation
  * `-loop-write-clusterer` - enables the transformation
  * `-lwc-loop-unroll` - perform the unroll step
  * `-lwc-loop-unroll-count=8` - unroll candidate loops 8 times
  * `-lwc-loop-unroll-threshold=400` - do not unroll if the candidate loop exceeds 400 instructions (limit code size growth)
* `ICLANG_PASS_LOOP_CLUSTER_FLAGS` - enables the write clustering of the _Loop Write Clusterer_ transformation
  * `-loop-write-clusterer` - enables the transformation
  * `-lwc-loop-schedule` - perform the write cluster step
* `ICLANG_PASS_WRITE_BUFFER_FLAGS` - enables the _Write Clusterer_ transformation
  * `-write-buffer` - enable the transformation
* `ICLANG_PASS_EXPANDER_FLAGS`  - enables the _Expander_ transformation
  * `-expander` - enable the transformation
* `ICLANG_CODEGEN_FLAGS` - sets the _back-end_ flags to enable
  * `-mllvm --idemp-force-lr-spill` - enable checkpoints for stack spill WARs
  * `-mllvm --idemp-code-gen` - convert checkpoint intrinsic calls to actual checkpoints
  * `-mllvm --idemp-pop` - convert `pop` instructions to not have WARs
  * `-mllvm --idemp-checkpoint-reason-markers` - insert special markers to track the cause of a checkpoint
  * `-mllvm --idemp-stack-spill-hitting-set` - use a hitting-set algorithm to place stack-spill checkpoints
  * `-mllvm --idemp-disable-interrupt-during-pop` - pefrorm the _Epilog Optimizer_ transformation

As an example, the `iclang` configuration for `R-PDG` in the paper would be:
```
export ICLANG_PASS_IDEMP_FLAGS="-idemp"
export ICLANG_PASS_LOOP_UNROLL_FLAGS=""
export ICLANG_PASS_LOOP_CLUSTER_FLAGS=""
export ICLANG_PASS_WRITE_BUFFER_FLAGS=""
export ICLANG_PASS_EXPANDER_FLAGS=""
export ICLANG_CODEGEN_FLAGS=-mllvm --idemp-force-lr-spill -mllvm --idemp-code-gen -mllvm --idemp-pop -mllvm --idemp-checkpoint-reason-markers 
```
and the `iclang` configuration for `WARio+Expander` would be:
```
export ICLANG_PASS_IDEMP_FLAGS="-idemp"
export ICLANG_PASS_LOOP_UNROLL_FLAGS="-loop-write-clusterer -lwc-loop-unroll -lwc-loop-unroll-count=8 -lwc-loop-unroll-threshold=400"
export ICLANG_PASS_LOOP_CLUSTER_FLAGS="-loop-write-clusterer -lwc-loop-schedule"
export ICLANG_PASS_WRITE_BUFFER_FLAGS="-write-buffer"
export ICLANG_PASS_EXPANDER_FLAGS="-expander"
export ICLANG_CODEGEN_FLAGS="-mllvm --idemp-force-lr-spill -mllvm --idemp-code-gen -mllvm --idemp-pop -mllvm --idemp-checkpoint-reason-markers -mllvm --idemp-stack-spill-hitting-set -mllvm --idemp-disable-interrupt-during-pop"
```
To view all the configutations used in the paper, see `WARio/scripts/benchmark-build`.
