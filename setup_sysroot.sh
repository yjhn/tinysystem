#!/bin/sh

set -eux

mkdir sysroot

cp -r etc sysroot

cd sysroot
mkdir usr sys dev proc

cd usr
mkdir lib bin sbin

cd ..
ln -s usr/lib lib
ln -s usr/bin bin
ln -s usr/sbin sbin
