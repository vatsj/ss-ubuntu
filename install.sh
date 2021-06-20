# directories
PROJECT=$(pwd)
USRLIB=${HOME}/usrlib

# defining macros
source utils.sh

# runs aux scripts

# cd-s into `usrlib` dir
mkdir -p ${USRLIB}
cd ${USRLIB}

# loops thru aux scripts
for script in ${PROJECT}/scripts/*.sh
do
  source ${PROJECT}/scripts/${script}.sh
done


# export new path
printf "\n\n PATH: \n"
echo ${PATH}
# export ${PATH}

# return to project dir
cd ${PROJECT}
