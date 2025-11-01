#!/bin/sh
# designed to be ran on intel-based macs, specifically a macbook pro with 32G ram, and a special debian environment
# for use with qcow2 image files, this works well with *-nocloud-amd64.qcow images.
# available at https://cdimage.debian.org/images/cloud/[codename]/latest/debian-[version]-nocloud-amd64.qcow2
qemu-system-x86_64 \
    -cpu max \
    -accel hvf \
    -m 8192 \
    -drive file=./vdisk.qcow2,media=disk,if=virtio \
    -nic user,model=virtio \
    -vga virtio \
    -display cocoa,full-grab=on,zoom-to-fit=on
