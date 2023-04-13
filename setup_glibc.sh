#!/bin/sh

set -eux

MAKE_THREADS="$(echo $(nproc) \* 2 | bc -l)"

#git clone git://sourceware.org/git/glibc.git --depth 1 --branch glibc-2.37

cd ./glibc

rm -rI build
mkdir build
cd build

# We only suport kernel 5.15 and above.
../configure --enable-kernel=5.15.0 --prefix=/usr --build=x86_64-unknown-linux-gnu --host=arm-linux-gnueabihf

make -s -j"${MAKE_THREADS}"
make -s -j"${MAKE_THREADS}" install DESTDIR=/home/studentas/learning/linux_from_scratch/tinysystem/nfsroot
