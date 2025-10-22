#!/usr/local/bin/bash

MACHINE="$1"

qemu-system-x86_64 \
    -m 2048 \
    -cpu max \
    -drive file="$MACHINE",media=disk,if=virtio \
    -nic user,model=virtio \
    -display cocoa \
    -accel hvf
