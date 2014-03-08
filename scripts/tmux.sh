#!/bin/bash

# check root
if [ ${EUID:-${UID}} != 0 ]; then
    echo 'You need to be root to perform this command.'
    exit
fi

cd /usr/local/src

# libevent
if rpm -qa | grep "libevent"
then
    echo "already exist libevent"
else
    tar xvzf /usr/local/src/libevent-2.0.21-stable.tar.gz
    cd /usr/local/src/src/libevent-2.0.21-stable
    ./configure
    make && make install
    echo /usr/local/lib > /etc/ld.so.conf.d/libevent.conf
    ldconfig
fi

# tmux
echo "tmux"
tar xvzf /usr/local/src/tmux-1.8.tar.gz
cd /usr/local/src/tmux-1.8
./configure
make && make install
cd -
