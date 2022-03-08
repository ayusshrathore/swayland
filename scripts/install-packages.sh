#!/bin/bash

# Requires sudo
if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
        exit
fi

echo "======> Installing Official Packages"
echo

pacman -Sy --needed $(<packages.txt)
