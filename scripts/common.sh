#!bin/bash
yum -y update
yum -y install wget gcc make
yum -y install ncurses ncurses-devel
yum -y install yum-cron
/etc/rc.d/init.d/yum-cron start
chkconfig yum-cron on
yum -y groupinstall "Base" "Development tools"
yum -y install nkf 
yum -y install zlib zlib-devel
yum -y install openssl-devel
