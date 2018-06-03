#!/bin/bash -e

install -m 644 files/dhcpcd5_6.11.5-1+rpt5_armhf.deb "${ROOTFS_DIR}/tmp/dhcpcd5_6.11.5-1+rpt5_armhf.deb"
install -m 644 files/raspberrypi-net-mods_1.2.7_all.deb "${ROOTFS_DIR}/tmp/raspberrypi-net-mods_1.2.7_all.de"
install -m 644 files/raspberrypi-sys-mods_20180328_armhf.deb "${ROOTFS_DIR}/tmp/raspberrypi-sys-mods_20180328_armhf.deb"
install -m 644 files/raspi-config_20180406+1_all.deb "${ROOTFS_DIR}/tmp/raspi-config_20180406+1_all.deb"
install -m 644 files/pi-bluetooth_0.1.7_all.deb "${ROOTFS_DIR}/tmp/pi-bluetooth_0.1.7_all.deb"

on_chroot << EOF
# INSTALL THESE DEB PACKAGES UNTL ADDED TO KALI REPO
dpkg -i /tmp/dhcpcd5_6.11.5-1+rpt5_armhf.deb
dpkg -i /tmp/raspberrypi-sys-mods_20180328_armhf.deb
dpkg -i /tmp/raspberrypi-net-mods_1.2.7_all.deb
dpkg -i /tmp/raspi-config_20180406+1_all.deb
dpkg -i /tmp/pi-bluetooth_0.1.7_all.deb
rm -rf /tmp/*.deb
EOF