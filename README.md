# cutefish-git
This repository contains the PKGBUILDs of cutefish desktop environment
in Arch User Repository. If there is problem with each of them, please submit
an issue and explain the problem.
## installation
### AUR
These packages are available in AUR. You can install them easily with
your AUR helper of choice.

    $ paru -S fishui-git "libcutefish-git cutefish-core-git cutefish-calculator-git \
            cutefish-dock-git cutefish-filemanager-git cutefish-icons-git \
            cutefish-kwin-plugins-git cutefish-launcher-git cutefish-qt-plugins-git \
            cutefish-screenlocker-git cutefish-settings-git cutefish-statusbar-git \
            cutefish-terminal-git cutefish-wallpapers-git cutefish-screenshot-git \
            cutefish-videoplayer-git cutefish-gtk-themes-git cutefish-cursor-themes-git

### Script
The 'setup.sh' will go through all of packages, build and install them.
So you can execute this file.

    $ bash setup.sh

### Manual
Obviously you can build all of packages yourself. Good luck with that.

## TODO
- [x] Create a meta package to install all packages in one package
