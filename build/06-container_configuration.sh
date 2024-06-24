#!/bin/bash
if [ ! -d /tmp/xdg ]; then
  mkdir /tmp/xdg
fi
rm -R /home/debian/.dbus/session-bus/* 2> /dev/null
if [ ! -d /var/run/dbus ]; then
  mkdir -p /var/run/dbus
fi
USER_UID="$(cat /etc/passwd | grep "debian" | cut -d ':' -f3)"
USER_GID="$(cat /etc/passwd | grep "debian" | cut -d ':' -f4)"
chown -R ${USER_UID}:${USER_GID} /var/run/dbus/
chmod -R 770 /var/run/dbus/
chown -R ${USER_UID}:${USER_GID} /tmp/xdg
chmod -R 0700 /tmp/xdg
dbus-uuidgen > /var/lib/dbus/machine-id
rm -R /tmp/.* 2> /dev/null
mkdir -p /tmp/.ICE-unix
chown root:root /tmp/.ICE-unix/
chmod 1777 /tmp/.ICE-unix/
chown -R ${USER_UID}:${USER_GID} /home/debian
