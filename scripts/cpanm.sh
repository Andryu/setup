#!/bin/sh
# author : shunsuke andoh
# update : 2013/11/16
# name   : cpanm 

if yum list | grep perl-CPAN ; then
echo "already CPAN"
else
    yum install perl-CPAN
fi

# ExtUtils::Manifest
cd /usr/local/src
tar zxvf ExtUtils-Manifest-1.63.tar.gz
perl Makefile.PL
make && make install

# cpanm
perl cpanm App::cpanminus

cpanm -i -n CGI
cpanm -i -n Test::More
cpanm -i -n JSON
cpanm -i -n Redis
cpanm -i -n Task::Catalyst
cpanm -i -n Devel::Cover 
cpanm -i -n Pod::Coverage
cd -
