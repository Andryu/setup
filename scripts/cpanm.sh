#!/bin/sh
yum -y install perl-devel
yum -y install mysql-devel

# cpanm
#mkdir ~/bin && cd ~/bin/
cd /usr/bin/
curl -LOk http://xrl.us/cpanm
chmod +x cpanm

cpanm -i -n local::lib
cpanm -i -n YAML
cpanm -i -n CGI
cpanm -i -n JSON
cpanm -i -n Redis
cpanm -i -n Data::Dumper
cpanm -i -n DBD::mysql
cpanm -i -n DBI
cpanm -i -n DBIx::Simple
cpanm -i -n Task::Catalyst
cpanm -i -n Test::More
cpanm -i -n Test::Harness
cpanm -i -n Test::Mock::Guard
cpanm -i -n Test::MockObject
cpanm -i -n Test::mysqld
cpanm -i -n Devel::Cover 
cpanm -i -n Pod::Coverage
