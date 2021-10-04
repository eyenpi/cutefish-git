FROM archlinux:base-devel

# user creation
RUN useradd -m cutefish && \
    echo "cutefish:cutefish" | chpasswd && \
    echo "cutefish ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER cutefish
WORKDIR /home/cutefish

# pacman installations
RUN sudo pacman --noconfirm -Syu && \
    sudo pacman --noconfirm -S git openssh

# configure ssh pair keys
COPY --chown=cutefish:cutefish .ssh .ssh
RUN chmod 600 ~/.ssh/*

# clone projects
RUN mkdir ~/w && cd ~/w && \
    git clone https://github.com/eyenpi/cutefish-git.git && cd cutefish-git && \
    bash Utilities/get_AUR.sh

CMD /bin/bash
