# Dockerfiles for WARio

We split WARio into multiple docker containers, depending on what part you need or want to customize/run yourself.

**The containers build upon each other, so make sure to take note of the order.**

Each of the configurations is a directory that the Dockerfile that generates
them and the generated image (in tar.gz format) that can be imported into docker.

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
After building the *wario-experiments* container you can retrieve the generated
results, including the Figures and Tables generated in the paper (that depend on the benchmarks).
* Figures 4, 5, 6 and 7
* Tables 1 and 2

To retrieve the generated results, while the  *wario-experiments* container is
running, in another terminal (on the host) run:
```
$ ./get-results.sh
```

This will copy all the results into a directory called `generated`.
