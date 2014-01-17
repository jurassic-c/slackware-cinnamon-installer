#!/bin/bash

wget http://www.freedesktop.org/software/systemd/systemd-208.tar.xz -O systemd-208.tar.xz
wget http://bash-completion.alioth.debian.org/files/bash-completion-2.0.tar.bz2 -O bash-completion-2.0.tar.bz2
git clone https://git.gitorious.org/gusb/gusb.git
wget https://github.com/GNOME/yelp-tools/archive/3.11.3.tar.gz -O yelp-tools-3.11.3.tar.gz

for f in `ls`
do
	if [ -d $f ]; then
		rm -Rf $f
	fi
done

for f in `ls | grep '\.tar\.'`
do
	tar -xvf $f

done
for f in `ls`
do
	if [ -d $f ]; then
		cd $f
		if [ -a autogen.sh ]; then
			./autogen.sh --prefix=/usr --libdir=/usr/lib64 --enable-compile-warnings=no && make && make install
		elif [ -a configure ]; then
				./configure --prefix=/usr --libdir=/usr/lib64 --enable-compile-warnings=no && make && make install
		fi
		cd ..
	fi
done
