#!/bin/bash

packages=(
            "fishui-git" "libcutefish-git" "cutefish-core-git" "cutefish-calculator-git"
            "cutefish-dock-git" "cutefish-filemanager-git" "cutefish-icons-git"
            "cutefish-kwin-plugins-git" "cutefish-launcher-git" "cutefish-qt-plugins-git"
            "cutefish-screenlocker-git" "cutefish-settings-git" "cutefish-statusbar-git"
            "cutefish-terminal-git" "cutefish-wallpapers-git" "cutefish-screenshot-git"
            "cutefish-videoplayer-git" "cutefish-gtk-themes-git" "cutefish-cursor-themes-git"
        )

for f in ${packages[@]}; do
    cd $f
    if [ $f == "fishui-git" ] || [ $f == "libcutefish-git" ]; then
        makepkg -si --noconfirm
    else
        makepkg --noarchive -oCcfs --noconfirm
    fi
    find . ! -name 'PKGBUILD' -type f,d -exec rm -rf {} +
    cd ~/w/cutefish-git-aur/$f
    cp ~/w/cutefish-git/$f/PKGBUILD .
    cp ~/w/cutefish-git/Utilities/aur.gitignore .
    mv aur.gitignore .gitignore
    makepkg --printsrcinfo > .SRCINFO
    git add PKGBUILD .SRCINFO .gitignore
    git commit -m "updated to version 0.7"
    git push
    cd ~/w/cutefish-git
done