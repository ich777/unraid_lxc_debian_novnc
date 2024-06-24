#!/bin/bash
apt-get -y install --no-install-recommends xvfb wmctrl x11vnc websockify fluxbox screen libxcomposite-dev libxcursor1 xauth

TURBOVNC_V="$(wget -qO- https://api.github.com/repos/TurboVNC/turbovnc/releases/latest | grep tag_name | cut -d '"' -f4)"
cd /tmp && \
  wget -qO /tmp/turbovnc.deb https://github.com/TurboVNC/turbovnc/releases/download/${TURBOVNC_V}/turbovnc_${TURBOVNC_V}_amd64.deb && \
  apt -y install /tmp/turbovnc.deb && \
  rm -rf /opt/TurboVNC/java /opt/TurboVNC/README.txt && \
  cp -R /opt/TurboVNC/bin/* /bin/ && \
  rm -rf /opt/TurboVNC /tmp/turbovnc.deb && \
  sed -i '/# $enableHTTP = 1;/c\$enableHTTP = 0;' /etc/turbovncserver.conf
