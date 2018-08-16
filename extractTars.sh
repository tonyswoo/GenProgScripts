#! /bin/bash

WD=$HOME/defects4j/D4JwithGP

while [ $# -gt 0 ]; do
	for tarfile in $WD/$1/*.tar; do
		tar -xf $tarfile -C $WD/$1
		mv $WD/$1/$WD/$1/tmp ${tarfile%.tar}
		rm -rf $WD/$1/root
	done
	shift
done

