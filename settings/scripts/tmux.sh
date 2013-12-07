#!/bin/bash

cd /tmp/software/

# libevent
echo "libevent"
if rpm -qa | grep libevent ; then
    echo "already exists!!"
else
    tar xvzf libevent-2.0.21-stable.tar.gz
    cd libevent-2.0.21-stable
    ./configure
    make && make install
    echo /usr/local/lib > /etc/ld.so.conf.d/libevent.conf
    ldconfig
    cd -
fi

# tmux
echo "tmux"
if yum list | grep tmux ; then
    echo "already exists!!"
else
    tar xvzf tmux-1.8.tar.gz
    cd tmux-1.8
    ./configure
    make && make install
    cd -
fi
