#!/bin/bash

printf "\n\n initializing ~/bin directory \n"
# creates home/bin directory, adds it to $PATH
cd ${HOME}
mkdir -p bin
cd bin
path_append $(pwd)

# imports ezmacro project
git clone https://github.com/vatsj/ezmacro
