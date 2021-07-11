#!/bin/bash

printf "\n\n INITIALIZING ~/.bin DIRECTORY \n"
# creates home/bin directory, adds it to $PATH
cd ${HOME}
mkdir -p bin
cd bin
path_append $(pwd)

# imports ezmacro project from github repo
if [ ! -d ezmacro ]
then
  git clone https://github.com/vatsj/ezmacro
fi
