#!/bin/bash -e

# Kali-rolling is not installed by default with debootstrap
cp files/kali /usr/share/debootstrap/scripts/kali-rolling

if [ ! -d "${ROOTFS_DIR}" ]; then
	bootstrap kali-rolling "${ROOTFS_DIR}" http://http.kali.org/kali
fi
