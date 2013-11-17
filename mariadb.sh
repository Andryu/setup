#!/bin/sh

if rpm -qa | grep "MariaDB" 
then
    echo "exist! MariaDB"
    #exit
else
    cp mariadb.repo /etc/yum.repos.d/ 
    rpm --import https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
    yum -y install MariaDB-devel MariaDB-client MariaDB-server MariaDB-common MariaDB-compat MariaDB-shared
fi

if /etc/init.d/mysql status
then
    echo "hell"
    /etc/init.d/mysql stop
    sed -i -e "s/[mysqld]/\ncharacter-set-utf8/" /etc/my.cnf.d/server.cnf
    /usr/bin/mysqladmin -u root password 'aug3108a'
    /etc/init.d/mysql start
else
    echo "stop"
fi
