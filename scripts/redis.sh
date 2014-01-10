#!/bin/sh

cd ${SET_UP_DIR}/software/
tar xzf redis-2.6.14.tar.gz
cd redis-2.6.14
make && make install
cd -
