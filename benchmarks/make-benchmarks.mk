#
# Generic benchmarks
# Creates targets for all the benchmarks in BENCHMARKS and all the
# configurations in CONFIGURATIONS (taken from the benchmark-build targets)
#
# These benchmarks measure the impact of each of the compiler passes
#

BENCHMARKS := \
		quicksort \
		coremark \
		crc \
		sha \
		dijkstra \
		aes \
		picojpeg

# Get the different configuration targets from benchmark-build
CONFIGURATIONS := $(shell benchmark-build targets)

include make-generate.mk
