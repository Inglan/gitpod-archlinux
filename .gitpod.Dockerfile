FROM archlinux:latest

RUN pacman -Syu \
    git \
    git-lfs \
    sudo \

# Create the gitpod user. UID must be 33333.
RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod

USER gitpod
