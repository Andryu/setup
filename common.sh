# author : shunsuke andoh
# update : 2013/11/16
# name   : common  

yum -y install wget gcc make
yum -y install ncurses ncurses-devel
yum -y install vim-enhanced
mkdir /tmp/download
cp software/*.tar.gz /tmp/download/
