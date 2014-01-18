#!/bin/bash

for d in 1 2 3 4
do
	cd $d
	for f in `ls`
	do
		if [ -d $f ];then
			rm -Rf $f
		fi
	done
	/bin/bash install.sh
	cd ..
done

git clone https://github.com/linuxmint/Cinnamon.git cinnamon
cd cinnamon
./autogen.sh --prefix=/usr --libdir=/usr/lib64 --enable-compile-warnings=no && make && make install
