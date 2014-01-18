#!/bin/bash

wget https://download.gnome.org/sources/NetworkManager/0.9/NetworkManager-0.9.8.8.tar.xz -O NetworkManager-0.9.8.8.tar.xz
wget http://cgit.freedesktop.org/accountsservice/snapshot/accountsservice-0.6.34.tar.gz -O accountsservice-0.6.34.tar.gz
wget https://github.com/linuxmint/cinnamon-settings-daemon/archive/2.0.8.tar.gz -O cinnamon-settings-daemon-2.0.8.tar.gz
wget http://ftp.gnome.org/pub/GNOME/sources/caribou/0.4/caribou-0.4.13.tar.xz -O caribou-0.4.13.tar.xz
wget http://ftp.gnome.org/pub/GNOME/sources/gobject-introspection/1.39/gobject-introspection-1.39.0.tar.xz -O gobject-introspection-1.39.0.tar.xz
wget http://freedesktop.org/software/pulseaudio/releases/pulseaudio-4.0.tar.xz -O pulseaudio-4.0.tar.gz
wget http://ftp.gnome.org/pub/GNOME/sources/gnome-menus/3.10/gnome-menus-3.10.1.tar.xz -O gnome-menus-3.10.1.tar.xz
wget https://github.com/linuxmint/cjs/archive/2.0.0.tar.gz -O cjs-2.0.0.tar.gz
git clone https://github.com/linuxmint/muffin.git ./muffin
wget https://git.gnome.org/browse/clutter/snapshot/clutter-1.10.8.tar.gz -O clutter-1.10.8.tar.gz

/bin/bash ../installpkgs.sh
