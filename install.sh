#!/bin/bash

for d in 4 3 2 1
do
	cd $d
	for f in `ls`
	do
		if [ -d $f ];then
			rm -Rf $f
		fi
	done
	/bin/bash install.sh
	rc=$?
	echo "EXITED WITH: $rc"
	if [ $rc != 0 ]; then
		exit $rc
	fi
	cd ..
done

git clone https://github.com/linuxmint/Cinnamon.git cinnamon
cd cinnamon
./autogen.sh --prefix=/usr --libdir=/usr/lib64 --enable-compile-warnings=no && make && make install

cd ../post
/bin/bash install.sh
