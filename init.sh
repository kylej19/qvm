#!/bin/sh
# will fail if already exists on purpose
mkdir -p ./blank-vm
echo "> mkdir ../blank-vm ..."
# copies all needed scripts
cp ./boot.sh ../blank-vm/boot.sh
cp ./pull.sh ../blank-vm/pull.sh
echo "> cp ./boot.sh ../blank-vm/boot.sh ..."
echo "> cp ./pull.sh ../blank-vm/pull.sh ..."
# and moves into the directory
cd ../blank-vm

