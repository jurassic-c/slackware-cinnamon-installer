#!/bin/bash

wget http://ftp.gnome.org/pub/GNOME/sources/caribou/0.4/caribou-0.4.13.tar.xz
wget https://github.com/linuxmint/cinnamon-settings-daemon/archive/2.0.8.tar.gz -O cinnamon-settings-daemon-2.0.8.tar.gz
wget http://cgit.freedesktop.org/accountsservice/snapshot/accountsservice-0.6.34.tar.gz
wget https://download.gnome.org/sources/NetworkManager/0.9/NetworkManager-0.9.8.8.tar.xz

/bin/bash ../installpkgs.sh
