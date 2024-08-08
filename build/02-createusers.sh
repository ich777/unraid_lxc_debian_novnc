#!/bin/bash
echo -e 'Unraid\nUnraid' | passwd root
useradd -rm debian -s /bin/bash
echo -e 'debian\ndebian' | passwd debian

echo -e "\ncd /root\nsu - debian" >> /root/.bashrc
hostnamectl set-hostname novnc
