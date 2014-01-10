#!/bin/bash
# author : shunsuke andoh
# update : 2013/11/16
# name   : tmux 

# check root
if [ ${EUID:-${UID}} != 0 ]; then
    echo 'You need to be root to perform this command.'
    exit
fi

cd ${SET_UP_DIR}/software 

# libevent
if rpm -qa | grep "libevent"
then
    echo "already exist libevent"
else
    tar xvzf libevent-2.0.21-stable.tar.gz
    ./libevent-2.0.21-stable/configure
    make && make install
    echo /usr/local/lib > /etc/ld.so.conf.d/libevent.conf
    ldconfig
fi

# tmux
echo "tmux"
tar xvzf tmux-1.8.tar.gz
./tmux-1.8/configure
make && make install
cd -
