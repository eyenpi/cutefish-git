#!/bin/bash

cd ~/w/cutefish-git
rm -rf ~/w/cutefish-git-aur
mkdir ~/w/cutefish-git-aur

packages=(
            "fishui-git" "libcutefish-git" "cutefish-core-git" "cutefish-calculator-git"
            "cutefish-dock-git" "cutefish-filemanager-git" "cutefish-icons-git"
            "cutefish-kwin-plugins-git" "cutefish-launcher-git" "cutefish-qt-plugins-git"
            "cutefish-screenlocker-git" "cutefish-settings-git" "cutefish-statusbar-git"
            "cutefish-terminal-git" "cutefish-wallpapers-git"
        )

for f in ${packages[@]}; do
    cd ~/w/cutefish-git-aur
    git clone ssh://aur@aur.archlinux.org/`basename $f`.git
    cd ~/w/cutefish-git
done