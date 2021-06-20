#!/bin/bash

# directories
PROJECT=$(pwd)
USRLIB=${HOME}/usrlib

# defining macros
source utils.sh

# Update Ubuntu and get standard repository programs
sudo apt update && sudo apt full-upgrade -y

# installs critical prereqs
sai git
sai snapd

# runs aux scripts

# all aux scripts run from `usrlib` directory
mkdir -p ${USRLIB}

# loops thru aux scripts
for script in ${PROJECT}/scripts/*.sh
do
  # cd to usrlib each time
  cd ${USRLIB}
  source ${PROJECT}/scripts/${script}.sh
done


# export new path
printf "\n\n PATH: \n"
echo ${PATH}
# export ${PATH}

# return to project dir
cd ${PROJECT}
