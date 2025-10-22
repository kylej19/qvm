#!/usr/local/bin/bash

DISK="$1"
SIZE="$2"

curl -Lo $DISK.qcow2 "https://cloud.debian.org/images/cloud/trixie/latest/debian-13-nocloud-amd64.qcow2"
qemu-img resize $DISK.qcow2 $SIZE

cat ./setup-instructions.txt
