#!/bin/sh

URL="$1"
SIZE="$2"

echo "> downloading qcow2 from $1 ..."
curl -Lo vdisk.qcow2 "$1"
echo "> resizing image vdisk.qcow2 to $2 ..."
qemu-img resize vdisk.qcow2 $SIZE
