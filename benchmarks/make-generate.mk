#
# Common benchmark generation functions used by make-*.mk
#

# Highlight begin/end
HLB = "\\e[33m\\e[1m"
HLE = "\\e[0m"

define generate_benchmark_configurations
$(1)-build-$(2):
		@echo "$(HLB)Building benchmark '$(1)' configuration '$(2)'$(HLE)"
		cd $(1) && benchmark-build $(2)

$(1)-run-$(2):
		@echo "$(HLB)Running benchmark '$(1)' configuration '$(2)'$(HLE)"
		cd $(1) && benchmark-run $(2)

# Used for parallel
$(1)-build-run-$(2):
		@echo "$(HLB)Building benchmark '$(1)' configuration '$(2)'$(HLE)"
		cd $(1) && benchmark-build $(2)
		@echo "$(HLB)Running benchmark '$(1)' configuration '$(2)'$(HLE)"
		cd $(1) && benchmark-run $(2)

CONFIGURATIONS_BUILD_$(1) += $(1)-build-$(2)
CONFIGURATIONS_RUN_$(1) += $(1)-run-$(2)
CONFIGURATIONS_BUILD_RUN_$(1) += $(1)-build-run-$(2)

CONFIGURATIONS_BUILD_ALL += $(1)-build-$(2)
CONFIGURATIONS_RUN_ALL += $(1)-run-$(2)
CONFIGURATIONS_BUILD_RUN_ALL += $(1)-build-run-$(2)

endef

define generate_benchmark_targets

$(1)-build: $(CONFIGURATIONS_BUILD_$(1))
		@echo "$(HLB)Done building configurations for $(1)$(HLE)"

$(1)-run: $(CONFIGURATIONS_RUN_$(1))
		@echo "$(HLB)Done running configurations for $(1)$(HLE)"

$(1)-analyze:
		@echo "$(HLB)Analyzing configurations for $(1)$(HLE)"
		cd $(1) && benchmark-compare && benchmark-analyze.py "./benchmark-compare/results.csv"
		@echo "\e[33m\e[1mDone analyzing configurations for $(1) \e[0m"

$(1)-build-run-analyze: $(CONFIGURATIONS_BUILD_RUN_$(1))
		@echo "$(HLB)Analyzing configurations for $(1)$(HLE)"
		@cd $(1) && benchmark-compare && benchmark-analyze.py "./benchmark-compare/results.csv"
		@echo "$(HLB)Done analyzing configurations for $(1)$(HLE)"

$(1)-all: $(1)-build-run-analyze

endef

define collect_benchmark_targets
BENCHMARKS_BUILD += $(1)-build
BENCHMARKS_RUN += $(1)-run
BENCHMARKS_ANALYZE += $(1)-analyze
BENCHMARKS_BUILD_RUN_ANALYZE += $(1)-build-run-analyze
BENCHMARKS_ALL += $(1)-all
endef

# Generate the benchmark target list
$(foreach bench,$(BENCHMARKS),$(eval $(call collect_benchmark_targets,$(bench))))

# Make all the default target
all: $(BENCHMARKS_ALL)

# Generate the benchmark configurations
$(foreach bench,$(BENCHMARKS), $(foreach config, $(CONFIGURATIONS), \
	$(eval $(call generate_benchmark_configurations,$(bench),$(config)))))

# Generate the benchmark targets
$(foreach bench,$(BENCHMARKS),$(eval $(call generate_benchmark_targets,$(bench))))

build: $(BENCHMARKS_BUILD)

run: $(BENCHMARKS_RUN)

analyze: $(BENCHMARKS_ANALYZE)

show-benchmarks:
		@echo "Benchmarks: $(BENCHMARKS)"


.PHONY: all build run analyze show-benchmarks \
		$(BENCHMARKS_BUILD) $(BENCHMARKS_RUN) $(BENCHMARKS_ANALYZE) $(BENCHMARKS_ALL) $(BENCHMARKS_BUILD_RUN_ANALYZE) \
		$(CONFIGURATIONS_BUILD_ALL) $(CONFIGURATIONS_RUN_ALL) $(CONFIGURATIONS_BUILD_RUN_ALL)

