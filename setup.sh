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
	makepkg -si --noconfirm
	cd ..
done