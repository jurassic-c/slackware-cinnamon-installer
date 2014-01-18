#!/bin/bash

for f in `ls | grep '\.tar\.'`
do
	tar -xvf $f

done
for f in `ls`
do
	if [ -d $f ]; then
		cd $f
		echo
		echo "COMPILING: $f"
		if [ -a autogen.sh ]; then
			./autogen.sh --prefix=/usr --libdir=/usr/lib64 --enable-compile-warnings=no && make && make install
		elif [ -a configure ]; then
			./configure --prefix=/usr --libdir=/usr/lib64 --enable-compile-warnings=no && make && make install
		fi
		if [ $? != 0 ];then
			exit $?
		fi
		cd ..
	fi
done
