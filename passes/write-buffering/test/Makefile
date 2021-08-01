LIBS=

all: test_opt

coremark:
	unzip coremark.zip

coremark.bc: coremark 
	./build-coremark
	llvm-dis $@

test_pre.bc: coremark.bc
	noelle-norm $^ -o $@
	llvm-dis $@

test_pre_prof: test_pre.bc
	noelle-prof-coverage $^ $@ $(LIBS)

default.profraw: test_pre_prof
	./$<

output.prof: default.profraw
	llvm-profdata merge $^ -output=$@

test_with_metadata.bc: output.prof test_pre.bc
	noelle-meta-prof-embed $^ -o $@
	noelle-meta-pdg-embed $@ -o $@
	llvm-dis $@

test_opt.bc: test_with_metadata.bc
	noelle-load -load $(ROOT)/passes/write-buffering/build/WriteBuffer.so $< -o $@
	llvm-dis $@

test_opt: test_opt.bc
	clang $< -O3 -march=native -o $@

clean:
	rm -f *.bc *.ll test_opt test_pre_prof output.prof default.* ;
	rm -rf coremark ;
