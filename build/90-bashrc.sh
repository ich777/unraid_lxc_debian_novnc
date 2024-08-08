#!/bin/bash
echo -e "\ncd /root\nsu - debian" >> /root/.bashrc
hostnamectl set-hostname novnc
