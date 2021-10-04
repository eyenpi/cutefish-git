#!/bin/bash

cd ~/w/cutefish-git
rm -rf ~/w/cutefish-git-aur
mkdir ~/w/cutefish-git-aur

for f in *-git/; do
	if [ -d "$f" ]; then
        cd ~/w/cutefish-git-aur
        git clone ssh://aur@aur.archlinux.org/`basename $f`.git
        cd ~/w/cutefish-git
    fi
done