#!/usr/local/bin/bash

MACHINE="$1"
RAM="$2"

qemu-system-x86_64 \
    -m "$RAM" \
    -cpu max \
    -drive file="$MACHINE".qcow2,media=disk,if=virtio \
    -nic user,model=virtio \
    -display cocoa \
    -accel hvf &
echo "qemu-system-x86_64 -m $RAM -cpu max -drive file=$MACHINE.qcow2,media=disk,if=virtio -nic user,model=virtio -display cocoa -accel hvf" >> boot.sh

