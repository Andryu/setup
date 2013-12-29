#!/bin/bash

# check root
if [ ${EUID:-${UID}} != 0 ]; then
    echo 'You need to be root to perform this command.'
    exit
fi

yum -y update
yum -y install yum-cron
/etc/rc.d/init.d/yum-cron start
chkconfig yum-cron on
yum -y groupinstall "Base" "Development tools"
yum -y install nkf


source common.sh
source tmux.sh
source mariadb.sh
source cpanm.sh
#source module.sh
source redis.sh
