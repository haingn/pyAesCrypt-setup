#!/usr/bin/env bash

if (( $EUID != 0 )); then
    echo "Please run as root"
    exit 1
fi

apt-get update && apt-get upgrade
apt install python3-pip
pip3 install pyAesCrypt
cd ~/
