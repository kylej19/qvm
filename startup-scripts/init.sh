#!/bin/sh
# will fail if already exists on purpose
mkdir ../blank-vm
# copies all needed scripts
cp ./* ../blank-vm/
# and moves into the directory
cd ../blank-vm
