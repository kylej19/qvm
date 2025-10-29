qemu-system-x86_64 \
-m 8192 \
-accel hvf \
-cpu max \
-drive file=./vdisk.qcow2,media=disk,if=virtio \
-nic user,model=virtio \
-display cocoa