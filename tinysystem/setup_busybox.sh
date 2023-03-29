#!/bin/sh

NPROC="$(nproc)"
MAKE_THREADS="$(echo ${NPROC} \* 2 | bc -l)"

cd busybox
make install -j"${MAKE_THREADS}"
cd ../nfsroot/bin
# busybox needs setuid
chmod 4755 busybox
# busybox has to be owned by root
sudo chown root busybox
