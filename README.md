# ss-ubuntu
Setup script for ubuntu (20.04)

This project installs a basic setup for Ubuntu (Debian Linux, relies on the `apt` package manager). It's written with minimalism in mind, but installs plenty of specific applications that I (Jacob) use (Discord, Gimp, ...)

## Prerequisites
**None**. Dotfiles can be installed alongside, but this project should be compatible with a fresh linux install.

## How to run
`cd` into the project folder, then run the following: `. install.sh`

To run an individual script (in the `scripts` folder), run `. scripts/[script name].sh`

## Conventions
The goal is to make the code/installs as non-technical and consistent with convention as possible. Macros `sai` = `sudo apt install` and `ssi` = `sudo snap install` I take as the gold standard; these options are used whenever available.

## Notes
Based off of [vdrake's setup script](https://github.com/victoriadrake/dotfiles/tree/ubuntu-20.04/scripts)
