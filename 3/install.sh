#!/bin/bash

wget http://www.freedesktop.org/software/systemd/systemd-208.tar.xz -O systemd-208.tar.xz
wget http://bash-completion.alioth.debian.org/files/bash-completion-2.0.tar.bz2 -O bash-completion-2.0.tar.bz2
git clone https://git.gitorious.org/gusb/gusb.git
wget https://github.com/GNOME/yelp-tools/archive/3.11.3.tar.gz -O yelp-tools-3.11.3.tar.gz

/bin/bash ../installpkgs.sh
rc=$?
if [ $rc != 0 ]; then
	exit $rc
fi
