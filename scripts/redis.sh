#!/bin/sh

cd /usr/local/src/
tar xzf redis-2.6.14.tar.gz
cd redis-2.6.14
make && make install
cd -
