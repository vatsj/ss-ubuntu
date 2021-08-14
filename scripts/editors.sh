#!/bin/bash
printf "\n EDITORS \n"

# command-line editor - vim
sai vim

# tmux for terminal workspace
sai tmux
# xsel for tmux-yank
sai xsel

# GUI editor - Atom
ssic atom

# installs atom packages

# terminal
apm install termination

# vim mode
apm install vim-mode-plus

# languages (for shell scripts)
apm install language-viml
apm install language-tmux

# edit thru ssh
apm install ftp-remote-edit
# gdrive-style team editing
apm install teletype
