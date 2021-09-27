#!/bin/bash

echo "Generating 'jpegdata.h' header"
gcc -O2 bintoc.c -o bintoc
./bintoc

echo "Compiling host-version (for testing)"
gcc -DHOST_COMPILE picojpeg.c picojpegtest.c -o picojpeg-host
