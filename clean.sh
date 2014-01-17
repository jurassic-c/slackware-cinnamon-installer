#!/bin/bash

for d in `ls`
do
	if [ -d $d ];then
		cd $d
		for f in `ls`
		do
			if [ -d $f ]; then
				echo "DELETING: $f"
				rm -Rf $f
			fi
		done
		cd ..
	fi
done
