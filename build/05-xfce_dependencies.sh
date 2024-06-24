#!/bin/bash
export TZ=Europe/Rome && \
  apt-get update &> /dev/null && \
  ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
  echo $TZ > /etc/timezone && \
  DEBIAN_FRONTEND=noninteractive apt-get -qq -y install --no-install-recommends man-db hdparm udev whiptail reportbug init \
  vim-common iproute2 nano gdbm-l10n less iputils-ping netcat-traditional perl bzip2 gettext-base manpages file liblockfile-bin \
  python3-reportbug libnss-systemd isc-dhcp-common systemd-sysv xz-utils perl-modules debian-faq wamerican bsdmainutils systemd \
  cpio logrotate traceroute dbus kmod isc-dhcp-client telnet krb5-locales lsof debconf-i18n cron ncurses-term iptables ifupdown \
  procps rsyslog apt-utils netbase pciutils bash-completion vim-tiny groff-base apt-listchanges bind9-host doc-debian libpam-systemd \
  openssh-client xfce4 xorg dbus-x11 sudo gvfs-backends gvfs-common gvfs-fuse gvfs firefox-esr at-spi2-core gpg-agent mousepad \
  xarchiver sylpheed unzip gtk2-engines-pixbuf gnome-themes-extra lxtask xfce4-terminal p7zip unrar curl \
  xfce4-screenshooter binutils gedit zip xfce4-taskmanager fonts-vlgothic ffmpeg openssh-server
