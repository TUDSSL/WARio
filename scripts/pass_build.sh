#! /usr/bin/bash

# For peroni
TC=./toolchain
pushd ./

cp ./driver/$1 $TC/catpass/CatPass.cpp
cp ./CMakeLists.txt $TC/catpass/
cp -ar ./src/ $TC/catpass/
cp -ar ./include/ $TC/catpass/

# Build from the toolchain
cd $TC 
./run_me.sh

popd
