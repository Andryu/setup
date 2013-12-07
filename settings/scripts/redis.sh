#!/bin/sh
# author : shunsuke andoh
# update : 2013/11/16
# name   : redis

cd /tmp/software
tar xzf redis-2.6.14.tar.gz
cd redis-2.6.14
make && make install
cd -
