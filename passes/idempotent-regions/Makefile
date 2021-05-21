export CC=clang
export CXX=clang++

all: configure
	cd build; $(MAKE);

configure:
	[ ! -d build ] && mkdir -p build && cd build && cmake -DCMAKE_BUILD_TYPE=Debug ../ || echo "already configured";

clean:
	rm -rf build ;

.PHONY: clean configure
