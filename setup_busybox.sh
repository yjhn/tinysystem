#!/bin/sh

set -eux

MAKE_THREADS="$(echo $(nproc) \* 2 | bc -l)"

cd ./busybox

make -s -j"${MAKE_THREADS}"
make -s -j"${MAKE_THREADS}" install
