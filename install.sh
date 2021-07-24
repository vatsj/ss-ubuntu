#!/bin/bash
printf "\n setup script initiated \n"

# directories
PROJECT=$(pwd)
USRLIB=${HOME}/usrlib

# defining macros
source utils.sh

# Update Ubuntu and get standard repository programs
printf "\n apt update + upgrade \n"
sudo apt update && sudo apt full-upgrade -y

# installs critical prereqs
printf "\n prereqs - git + snap \n"
sai git
sai snapd

# runs aux scripts
printf "\n running aux scripts \n"

# all aux scripts run from `usrlib` directory
mkdir -p ${USRLIB}

# loops thru aux scripts
for script in ${PROJECT}/scripts/*.sh
do
  # cd to usrlib each time
  cd ${USRLIB}
  source ${script}
done

# language-specific scripts
cd ${PROJECT}/lang-scripts
chmod +x julia_init.jl
julia julia_init.jl


# record new path
printf "\n\n PATH: \n"
echo ${PATH}
# export ${PATH}
echo export PATH=\"${PATH}\" >> ~/.bashrc

# return to project dir
cd ${PROJECT}
