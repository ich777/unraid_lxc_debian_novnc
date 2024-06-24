#!/bin/bash
NOVNC_V="$(wget -qO- https://api.github.com/repos/novnc/noVNC/releases/latest | grep tag_name | cut -d '"' -f4)"
cd /tmp && \
	wget -O /tmp/novnc.tar.gz https://github.com/novnc/noVNC/archive/${NOVNC_V}.tar.gz && \
	tar -xvf /tmp/novnc.tar.gz && \
	cd /tmp/noVNC* && \
	sed -i 's/credentials: { password: password } });/credentials: { password: password },\n                           wsProtocols: ["'"binary"'"] });/g' app/ui.js && \
	mkdir -p /usr/share/novnc && \
	cp -r app /usr/share/novnc/ && \
	cp -r core /usr/share/novnc/ && \
	cp -r utils /usr/share/novnc/ && \
	cp -r vendor /usr/share/novnc/ && \
	cp -r vnc.html /usr/share/novnc/ && \
	cp package.json /usr/share/novnc/ && \
	cd /usr/share/novnc/ && \
	chmod -R 755 /usr/share/novnc && \
	sed -i '/    document.title =/c\    document.title = "Debian - noVNC";' /usr/share/novnc/app/ui.js && \
	rm -rf /tmp/noVNC* /tmp/novnc.tar.gz
