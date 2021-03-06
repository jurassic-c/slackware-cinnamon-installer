#!/bin/bash

wget http://www.freedesktop.org/software/colord/releases/colord-1.1.5.tar.xz -O colord-1.1.5.tar.xz
wget http://ftp.gnome.org/pub/GNOME/sources/libgnomekbd/3.6/libgnomekbd-3.6.0.tar.xz -O libgnomekbd-3.6.0.tar.xz
wget http://ftp.gnome.org/pub/GNOME/sources/libgee/0.13/libgee-0.13.4.tar.xz -O libgee-0.13.4.tar.xz
wget http://ftp.gnome.org/pub/GNOME/sources/libxklavier/5.3/libxklavier-5.3.tar.xz -O libxklavier-5.3.tar.xz
wget http://xorg.freedesktop.org/releases/individual/lib/libXtst-1.2.2.tar.bz2 -O libXtst-1.2.2.tar.bz2
wget http://ftp.gnome.org/pub/GNOME/sources/pygobject/3.10/pygobject-3.10.2.tar.xz -O pygobject-3.10.2.tar.xz
wget http://downloads.xiph.org/releases/speex/speex-1.2rc1.tar.gz -O speex-1.2rc1.tar.gz
wget https://github.com/json-c/json-c/archive/json-c-0.11-20130402.tar.gz -O json-c-0.11.tar.gz
wget https://download.gnome.org/sources/gtk-doc/1.19/gtk-doc-1.19.tar.xz -O gtk-doc-1.19.tar.xz
wget http://ftp.gnome.org/pub/gnome/sources/zenity/3.8/zenity-3.8.0.tar.xz -O zenity-3.8.0.tar.xz
wget https://github.com/linuxmint/cinnamon-desktop/archive/2.0.4.tar.gz -O cinnamon-desktop-2.0.4.tar.gz
wget https://git.gnome.org/browse/gnome-common/snapshot/gnome-common-3.10.0.tar.gz -O gnome-common-3.10.0.tar.gz
wget https://download.gnome.org/sources/json-glib/0.16/json-glib-0.16.2.tar.xz -O json-glib-0.16.2.tar.xz
wget https://github.com/GNOME/cogl/archive/1.14.0.tar.gz -O cogl-1.14.0.tar.gz
wget http://www.kernel.org/pub/linux/bluetooth/bluez-4.101.tar.xz

/bin/bash ../installpkgs.sh
rc=$?
if [ $rc != 0 ]; then
	exit $rc
fi
