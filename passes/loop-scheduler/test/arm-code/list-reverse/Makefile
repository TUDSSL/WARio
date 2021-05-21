all: clang noelle

clang:
	mkdir -p build-clang && cd build-clang && ../cmake-clang.sh ../ && make

noelle:
	mkdir -p build-noelle && cd build-noelle && ../cmake-noelle.sh ../ && make

clean: 
	rm -rf build-clang build-noelle

.PHONY: clean clang noelle
