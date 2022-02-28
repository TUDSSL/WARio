CONFIG = opt-loop
RESULTS_DIR = results-powertrace

BENCHMARKS := \
		coremark \
		crc \
		sha \
		dijkstra \
		aes \
		picojpeg

#ON_TIMES := \
#		0 \
#		50000 \
#		100000 \
#		200000 \
#		500000 \
#  	1000000 \
#  	2000000 \
#  	5000000 \
#  	10000000 \
#  	20000000 \
#  	50000000 \

ON_TIMES := \
		0 \
		50000 \
		100000 \
  	1000000 \
  	5000000 \

STDEV := 1000

define powertrace_benchmark
POWERTRACE_BENCH_ALL += powertrace-$(1)
endef

# Get a list of the benchmark targets
$(foreach bench,$(BENCHMARKS),$(eval $(call powertrace_benchmark,$(bench))))

all: $(POWERTRACE_BENCH_ALL)

prepare:
		mkdir -p $(RESULTS_DIR)


define prepare_benchmark
prepare-$(1): prepare
		@echo "preparing for $(1) powertrace"
		mkdir -p $(RESULTS_DIR)/$(1)
		cp $(1)/build-$(CONFIG)/$(1).elf $(RESULTS_DIR)/$(1)/$(1).elf

PREPARE_ALL += prepare-$(1)
endef

define powertrace_benchmark
powertrace-$(1)-$(2): prepare-$(1)
		@echo "running powertrace $(1) [$(2)]"
		@run-powertrace $(2) $(STDEV) $(RESULTS_DIR)/$(1)/$(1).elf $(RESULTS_DIR)/$(1) > $(RESULTS_DIR)/$(1)/$(1)-$(2).emu 2>&1
		@echo "validating powertrace $(1) [$(2)]..."
		@powertrace-validate $(RESULTS_DIR)/$(1)/war-stats-$(2)-$(STDEV).csv

POWERTRACE_$(1)_ALL += powertrace-$(1)-$(2)
POWERTRACE_ALL += powertrace-$(1)-$(2)
endef

define powertrace_all
powertrace-$(1): $(POWERTRACE_$(1)_ALL)
		@echo "completed powertraces for $(1)"
endef

# Generate the benchmark preperation targets
$(foreach bench,$(BENCHMARKS),$(eval $(call prepare_benchmark,$(bench))))

# Generate the powertrace targets for each benchmark
$(foreach bench,$(BENCHMARKS),$(foreach ontime, $(ON_TIMES),$(eval $(call powertrace_benchmark,$(bench),$(ontime)))))

# Generate the powertrace target for all on-times
$(foreach bench,$(BENCHMARKS),$(eval $(call powertrace_all,$(bench))))

define powertrace_combine
powertrace-combine-$(1):
		@echo "combining powertrace files for $(1)"
		@powertrace-combine $(RESULTS_DIR)/$(1)

POWERTRACE_COMBINE_ALL += powertrace-combine-$(1)
endef
$(foreach bench,$(BENCHMARKS),$(eval $(call powertrace_combine,$(bench))))

powertrace-combine: $(POWERTRACE_COMBINE_ALL)

