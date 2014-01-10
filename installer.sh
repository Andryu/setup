#!/bin/bash

# check root
if [ ${EUID:-${UID}} != 0 ]; then
    echo 'You need to be root to perform this command.'
    exit
fi

SET_UP_DIR=`pwd`

yum -y update
yum -y install yum-cron
/etc/rc.d/init.d/yum-cron start
chkconfig yum-cron on
yum -y groupinstall "Base" "Development tools"
yum -y install nkf

SCRIPTS_DIR=${SET_UP_DIR}/scripts
source ${SCRIPTS_DIR}/common.sh
source ${SCRIPTS_DIR}/tmux.sh
source ${SCRIPTS_DIR}/mariadb.sh
source ${SCRIPTS_DIR}/cpanm.sh
source ${SCRIPTS_DIR}/redis.sh
