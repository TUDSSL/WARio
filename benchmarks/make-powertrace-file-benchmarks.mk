CONFIG = opt-loop
RESULTS_DIR = results-powertrace-tracefiles

BENCHMARKS := \
		coremark \
		crc \
		sha \
		dijkstra \
		aes \
		picojpeg

#BENCHMARKS := \
#		sha

TRACE_DIR := ../traces/parsed_traces/MSPSim_traces/

FILES := \
  	2_on_off_samples_list.txt \
  	7_on_off_samples_list.txt


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
		@echo "running powertrace file $(1) [$(TRACE_DIR)/$(2)]"
		run-powertrace-file $(TRACE_DIR)/$(2) $(2) $(RESULTS_DIR)/$(1)/$(1).elf $(RESULTS_DIR)/$(1) > $(RESULTS_DIR)/$(1)/$(1)-$(2).emu 2>&1
		@echo "validating powertrace $(1) [$(2)]..."
		@powertrace-validate $(RESULTS_DIR)/$(1)/war-stats-trace-file-$(2)-8000000.csv

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
$(foreach bench,$(BENCHMARKS),$(foreach tracefile, $(FILES),$(eval $(call powertrace_benchmark,$(bench),$(tracefile)))))

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

