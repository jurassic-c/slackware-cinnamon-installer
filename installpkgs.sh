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
		touch ERRORED
		if [ -a autogen.sh ]; then
			libtoolize
			./autogen.sh --prefix=/usr --libdir=/usr/lib64 --enable-compile-warnings=no && make && make install && rm ERRORED && touch YAY_SUCCESS
		elif [ -a configure ]; then
			./configure --prefix=/usr --libdir=/usr/lib64 --enable-compile-warnings=no && make && make install && rm ERRORED && touch YAY_SUCCESS
		fi
		if [ -f ERRORED ];then
			exit $?
		fi
		cd ..
	fi
done
