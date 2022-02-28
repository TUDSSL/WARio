
all: benchmarks loop-benchmarks
		@echo "Done building all benchmarks"

benchmarks:
		@echo "Building all generic benchmarks"
		OPT_LEVEL="-O3" $(MAKE) -f make-benchmarks.mk all

loop-benchmarks:
		@echo "Building all loop benchmarks"
		OPT_LEVEL="-O3" $(MAKE) -f make-loop-benchmarks.mk all

powertrace-benchmarks:
		@echo "Building all powertrace benchmarks"
		benchmark-powertrace.sh

.PHONY: all benchmarks loop-benchmarks powertrace-benchmarks
