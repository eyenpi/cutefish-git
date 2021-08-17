#!/bin/bash

for f in cutefish*; do
	if [ -d "$f" ]; then
        cd ~/w/cutefish-git-aur/$f
		cp ~/w/cutefish-git/$f/PKGBUILD .
        cp ~/w/cutefish-git/AUR/aur.gitignore .
        mv aur.gitignore .gitignore
        makepkg --printsrcinfo > .SRCINFO
        cd ~/w/cutefish-git
	fi
done