#!/bin/bash

# check root
if [ ${EUID:-${UID}} != 0 ]; then
    echo 'You need to be root to perform this command.'
    exit
fi

mkdir /var/www/setup
source /var/www/setup/_define.sh
source ${SCRIPTS_DIR}/common.sh
source ${SCRIPTS_DIR}/tmux.sh
source ${SCRIPTS_DIR}/mariadb.sh
source ${SCRIPTS_DIR}/cpanm.sh
source ${SCRIPTS_DIR}/redis.sh
