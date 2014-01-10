#!/bin/sh

if rpm -qa | grep "MariaDB" 
then
    echo "exist! MariaDB"
else
    cp ${SET_UP_DIR}/cnf/mariadb.repo /etc/yum.repos.d/ 
    rpm --import https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
    yum -y install MariaDB-devel MariaDB-client MariaDB-server MariaDB-common MariaDB-compat MariaDB-shared
    cp /etc/my.cnf.d/server.cnf /tmp/
    cp ${SET_UP_DIR}/cnf/server.cnf /etc/my.cnf.d/server.cnf 
    /usr/bin/mysqladmin -u root password 'aug3108a'
fi


