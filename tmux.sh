#!/bin/bash
# author : shunsuke andoh
# update : 2013/11/16
# name   : tmux 

cd /tmp/download/

# libevent
echo "libevent"
tar xvzf libevent-2.0.21-stable.tar.gz
./libevent-2.0.21-stable/configure
make && make install
echo /usr/local/lib > /etc/ld.so.conf.d/libevent.conf
ldconfig

# tmux
echo "tmux"
tar xvzf tmux-1.8.tar.gz
./tmux-1.8/configure
make && make install
