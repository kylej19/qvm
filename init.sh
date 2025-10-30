#!/bin/sh

URL="$1"
SIZE="$2"

echo "> mkdir ../blank-vm ..."
# copies all needed scripts
cp ./boot.sh ../base-vm/boot.sh
cp ./pull.sh ../base-vm/pull.sh
echo "> cp ./boot.sh ../base-vm/boot.sh ..."
echo "> cp ./pull.sh ../basek-vm/pull.sh ..."
# and moves into the directory
cd ../base-vm


echo "> downloading qcow2 from $1 ..."
curl -Lo vdisk.qcow2 "$1"
echo "> resizing image vdisk.qcow2 to $2 ..."
qemu-img resize vdisk.qcow2 $SIZE
