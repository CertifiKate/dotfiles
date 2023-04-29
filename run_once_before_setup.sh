#!/bin/bash
# Install required packages:
# - Figlet


if [[ -f /etc/arch-release && -x "$(command -v pacman)" ]]; then
    sudo pacman -Syu figlet --noconfirm
elif [[ -f /etc/debian_version && -x "$(command -v apt-get)" ]]; then
    sudo apt-get install figlet
else
    echo "Unsupported package manager"
    exit 1
fi
