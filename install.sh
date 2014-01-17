#!/bin/bash

for d in 1 2 3 4
do
	rm -Rf $d
	mkdir $d
	cd $d
	/bin/bash install.sh
done

git clone https://github.com/linuxmint/Cinnamon.git cinnamon
cd cinnamon
./autogen.sh --prefix=/usr --libdir=/usr/lib64 --enable-compile-warnings=no && make && make install
