#!/bin/bash

wget http://ftp.gnome.org/pub/GNOME/sources/gobject-introspection/1.39/gobject-introspection-1.39.0.tar.xz -O gobject-introspection-1.39.0.tar.xz
wget http://freedesktop.org/software/pulseaudio/releases/pulseaudio-4.0.tar.xz -O pulseaudio-4.0.tar.gz
wget http://ftp.gnome.org/pub/GNOME/sources/gnome-menus/3.10/gnome-menus-3.10.1.tar.xz -O gnome-menus-3.10.1.tar.xz
wget https://github.com/linuxmint/cjs/archive/2.0.0.tar.gz -O cjs-2.0.0.tar.gz
wget https://github.com/linuxmint/muffin/archive/2.0.5.tar.gz -O muffin-2.0.5.tar.gz
wget https://git.gnome.org/browse/clutter/snapshot/clutter-1.14.4.tar.gz
wget https://launchpad.net/intltool/trunk/0.50.2/+download/intltool-0.50.2.tar.gz -O intltool-0.50.2.tar.gz
wget https://download.gnome.org/sources/gnome-bluetooth/3.10/gnome-bluetooth-3.10.0.tar.xz -O gnome-bluetooth-3.10.0.tar.xz
wget http://ftp.gnome.org/pub/GNOME/sources/libcroco/0.6/libcroco-0.6.8.tar.xz
wget http://ftp.gnome.org/pub/GNOME/sources/gstreamer/0.10/gstreamer-0.10.36.tar.xz
wget http://cgit.freedesktop.org/xorg/lib/libXfixes/snapshot/libXfixes-5.0.tar.gz

/bin/bash ../installpkgs.sh
rc=$?
if [ $rc != 0 ]; then
	exit $rc
fi
