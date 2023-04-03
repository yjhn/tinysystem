#!/bin/sh

set -eux

cd ./nfsroot
# Deletes all files symlinked to busybox (and busybox itself)
find -L . -samefile bin/busybox -delete