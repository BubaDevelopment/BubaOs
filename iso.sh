#!/bin/sh
set -e
. ./build.sh

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/bubaos.kernel isodir/boot/bubaos.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "bubaos" {
	multiboot /boot/bubaos.kernel
}
EOF
grub-mkrescue -o bubaos.iso isodir
