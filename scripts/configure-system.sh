#!/bin/bash

if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
        exit
fi

# Bluetooth Configuration
cp -fv system-configs/main.conf /etc/bluetooth/

# Start Network Manager
systemctl enable NetworkManager

# Set time-date
timedatectl set-timezone 'Asia/Kolkata'
timedatectl set-ntp true

# Pacman Configuration
cp -fv system-configs/pacman.conf /etc/
cp -fv system-configs/mirrorlist /etc/pacman.d/

mkinitcpio -p linux
localectl set-locale LANG=en_US.UTF-8
