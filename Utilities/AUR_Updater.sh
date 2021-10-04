#!/bin/bash

for f in *-git/; do
	if [ -d "$f" ]; then
        cd $f
        makepkg --noarchive -oCcf --noconfirm
        find . ! -name 'PKGBUILD' -type f,d -exec rm -rf {} +
        cd ~/w/cutefish-git-aur/$f
		cp ~/w/cutefish-git/$f/PKGBUILD .
        cp ~/w/cutefish-git/AUR/aur.gitignore .
        mv aur.gitignore .gitignore
        makepkg --printsrcinfo > .SRCINFO
        git add PKGBUILD .SRCINFO .gitignore
        git commit -m "updated to version 0.5"
        git push
        cd ~/w/cutefish-git
	fi
done