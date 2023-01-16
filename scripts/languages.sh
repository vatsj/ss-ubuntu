#!/bin/bash

printf "\n\n PROGRAMMING LANGUAGES + ACCESSORY SOFTWARE \n"

printf "\n CONDA \n"
if ! test -d ~/anaconda3
then
  wget https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh
  chmod u+x Anaconda3-2019.07-Linux-x86_64.sh

  # runs anaconda setup script (IN BASH)
  bash ./Anaconda3-2019.07-Linux-x86_64.sh -y # requires you to click thru
else
  printf "\n SUCCESS - CONDA ALREADY INSTALLED \n"
fi

printf "\n NODE + NPM \n"
sai nodejs
sai npm

printf "\n RUBY \n"
sai ruby-full

# dependencies - do I need these?
sai build-essential
sai zliblg-dev

# installs ruby gems
if ! test -d ~/gems
then
# assumes bash -> might fail on zsh?!
  echo 'GEM_HOME=${HOME}/gems' >> ~/.bashrc
  path_append ${HOME}/gems/bin

  sudo gem install jekyll bundler
  sudo gem install github-pages
fi

printf "\n JULIA \n"
# replace w sai?
sudo apt install julia

printf "\n TEX - TeX live \n"
# https://nbconvert.readthedocs.io/en/latest/install.html#installing-tex
sudo apt-get install texlive-xetex texlive-fonts-recommended texlive-plain-generic
