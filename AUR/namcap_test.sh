#!/bin/bash

for f in *; do
	if [ -d "$f" ]; then
		cd $f
		namcap PKGBUILD
		cd ..
	fi
done
