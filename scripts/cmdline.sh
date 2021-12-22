#!/bin/bash

printf "\n\n COMMAND-LINE TOOLS \n"
sudo apt install htop

# github
ssi gh

# GNU utils

# make (for Makefiles)
sai make

# stow (dotfiles are stow-ed)
sai stow

# virtual machines
# source: https://ubuntu.com/blog/kvm-hyphervisor

# dependencies
sai bridge-utils cpu-checker libvirt-bin libvirt-clients libvirt-daemon qemu qemu-kvm

# group management should be handled automatically - just log back in
# sudo adduser $USER users
# sudo adduser $USER kvm
# sudo adduser $USER libvirtd
