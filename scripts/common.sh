#!bin/bash
yum -y update
yum -y install wget gcc make
yum -y install ncurses ncurses-devel
yum -y install yum-cron
/etc/rc.d/init.d/yum-cron start
chkconfig yum-cron on
yum -y groupinstall "Base" "Development tools"
yum -y install nkf
cp software/*.tar.gz /usr/local/src/
