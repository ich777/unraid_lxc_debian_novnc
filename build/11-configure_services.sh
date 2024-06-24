#!/bin/bash
systemctl --system daemon-reload
systemctl enable vncserver@debian
systemctl enable novnc@debian
systemctl enable xfce4@debian
systemctl stop sshd
