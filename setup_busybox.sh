#!/bin/sh

set -eux

# git clone --depth 1 --branch 1_36_0 https://git.busybox.net/busybox

MAKE_THREADS="$(echo $(nproc) \* 2 | bc -l)"

cd ./busybox

make -s -j"${MAKE_THREADS}"
make -s -j"${MAKE_THREADS}" install
