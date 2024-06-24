#!/bin/bash
echo "deb http://deb.debian.org/debian bookworm contrib non-free non-free-firmware" >> /etc/apt/sources.list
apt-get update
apt-get -y upgrade
apt-get -y install wget curl procps
