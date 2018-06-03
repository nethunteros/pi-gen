#!/bin/bash -e

# Until deb packages are added to kali repo
# raspberrypi-bootloader raspberrypi-kernel

install -m 644 files/libraspberrypi-bin_20180528-161258_armhf.deb "${ROOTFS_DIR}/tmp/libraspberrypi-bin_20180528-161258_armhf.deb"
install -m 644 files/libraspberrypi-dev_20180528-161258_armhf.deb "${ROOTFS_DIR}/tmp/libraspberrypi-dev_20180528-161258_armhf.deb"
install -m 644 files/libraspberrypi0_20180528-161258_armhf.deb "${ROOTFS_DIR}/tmp/libraspberrypi0_20180528-161258_armhf.deb"
install -m 644 files/linux-firmware-image-4.9.80-kali-v7+_4.9.80-kali-v7+-1_armhf.deb "${ROOTFS_DIR}/tmp/linux-firmware-image-4.9.80-kali-v7+_4.9.80-kali-v7+-1_armhf.deb"
install -m 644 files/linux-headers-4.9.80-kali-v7+_4.9.80-kali-v7+-1_armhf.deb "${ROOTFS_DIR}/tmp/linux-headers-4.9.80-kali-v7+_4.9.80-kali-v7+-1_armhf.deb"
install -m 644 files/linux-image-4.9.80-kali-v7+_4.9.80-kali-v7+-1_armhf.deb "${ROOTFS_DIR}/tmp/inux-image-4.9.80-kali-v7+_4.9.80-kali-v7+-1_armhf.deb"
install -m 644 files/linux-libc-dev_4.9.80-kali-v7+-1_armhf.deb "${ROOTFS_DIR}/tmp/linux-libc-dev_4.9.80-kali-v7+-1_armhf.deb"
install -m 644 files/raspberrypi-bootloader_20180528-161258_armhf.deb "${ROOTFS_DIR}/tmp/raspberrypi-bootloader_20180528-161258_armhf.deb"
install -m 644 files/raspberrypi-kernel_20180528-161258_armhf.deb "${ROOTFS_DIR}/tmp/raspberrypi-kernel_20180528-161258_armhf.deb"
install -m 644 files/raspberrypi-kernel-headers_20180528-161258_armhf.deb "${ROOTFS_DIR}/tmp/raspberrypi-kernel-headers_20180528-161258_armhf.deb"

on_chroot << EOF
dpkg -i /tmp/libraspberrypi-dev_20180528-161258_armhf.deb
dpkg -i /tmp/libraspberrypi0_20180528-161258_armhf.deb
dpkg -i /tmp/linux-firmware-image-4.9.80-kali-v7+_4.9.80-kali-v7+-1_armhf.deb
dpkg -i /tmp/linux-headers-4.9.80-kali-v7+_4.9.80-kali-v7+-1_armhf.deb
dpkg -i /tmp/linux-image-4.9.80-kali-v7+_4.9.80-kali-v7+-1_armhf.deb
dpkg -i /tmp/linux-libc-dev_4.9.80-kali-v7+-1_armhf.deb
dpkg -i /tmp/raspberrypi-bootloader_20180528-161258_armhf.deb
dpkg -i /tmp/raspberrypi-kernel_20180528-161258_armhf.deb
dpkg -i /tmp/raspberrypi-kernel-headers_20180528-161258_armhf.deb
rm -rf /tmp/*.deb
EOF