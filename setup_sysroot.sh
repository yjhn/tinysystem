#!/bin/sh

set -eux

mkdir nfsroot

cp -r etc nfsroot

cd nfsroot
mkdir usr sys dev proc

cd usr
mkdir lib bin sbin

cd ..
ln -s usr/lib lib
ln -s usr/bin bin
ln -s usr/sbin sbin
