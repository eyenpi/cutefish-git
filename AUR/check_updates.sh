#!/bin/bash

cd ~/w/cutefish-git-aur

for f in */; do
	if [ -d "$f" ]; then
        cd $f
        echo $f
        git pull
        git status
        echo "-----------------------------"
        cd ..
	fi
done