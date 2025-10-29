#!/bin/sh

URL="$1"
SIZE="$2"

curl -Lo vdisk.qcow2 "$1"
qemu-img resize vdisk.qcow2 $SIZE
