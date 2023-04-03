#!/bin/sh

set -eux

cd ./nfsroot

# ldd installed by glibc is using features unsupported in busybox shell
rm -f ./bin/ldd

cat << EOF >> ./etc/init.d/rcS

ldd() {
  LD_TRACE_LOADED_OBJECTS=1 \$1;
}
EOF
