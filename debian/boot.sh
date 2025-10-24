qemu-system-x86_64 -m 8192 -cpu max -drive file=/Users/kyle/gh/qvm/debian/disk.qcow2,media=disk,if=virtio -nic user,model=virtio -display cocoa -accel hvf
