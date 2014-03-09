#!/bin/sh

cd /usr/local/src 
tar xzf redis-2.6.14.tar.gz
cd /usr/local/src/redis-2.6.14
make && make install
mkdir /etc/redis
cp ${SET_UP_DIR}/cnf/redis.conf /etc/redis/redis.conf
cp ${SET_UP_DIR}/cnf/sysconfig_redis /etc/sysconfig/redis
cp ${SET_UP_DIR}/cnf/init_redis-server /etc/init.d/redis-server
