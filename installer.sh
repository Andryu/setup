#!/bin/bash
# author : shunsuke andoh
# update : 2013/11/16
# name   : installer

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
## SELinux 
#if [ `getenforce` == Enforcing ]; then
#    `setenforce` 0
#    sed "s/SELINUX=.*/SELINUX=disabled/" /etc/selinux/config
#fi
#

source common.sh
source tmux.sh
source mariadb.sh
source cpanm.sh
#source module.sh
source redis.sh
