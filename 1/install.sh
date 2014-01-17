#!/bin/bash

wget http://ftp.gnome.org/pub/GNOME/sources/yelp-xsl/3.11/yelp-xsl-3.11.1.tar.xz -O yelp-xsl-3.11.1.tar.xz

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
