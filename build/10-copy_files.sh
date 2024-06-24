#!/bin/bash
cd /tmp/build
chmod 755 $(ls -1 /tmp/build/ | grep -v "^[0-9][0-9]-")
cp /tmp/build/vncserver@debian.service /etc/systemd/system/vncserver@debian.service
cp /tmp/build/novnc@debian.service /etc/systemd/system/novnc@debian.service
cp /tmp/build/xfce4@debian.service /etc/systemd/system/xfce4@debian.service

cp /tmp/build/runonce.sh /etc/init.d/runonce.sh
