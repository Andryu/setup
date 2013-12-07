#!/bin/sh

yum -y install pcre pcre-devel
# nginxの実行ユーザーを作成
useradd -s /sbin/nologin nginx

cd /tmp/software
mv zlib-1.2.8.tar.gz /usr/local/src/
mv openssl-1.0.1c.tar.gz /usr/local/src/
cd /usr/local/src
tar zxvf zlib-1.2.8.tar.gz
tar zxvf openssl-1.0.1c.tar.gz

# nginx用のディレクトリを作成して権限設定
mkdir /var/{log,run}/nginx
chown nginx:nginx /var/{log,run}/nginx
mv /tmp/software/nginx-1.5.6.tar.gz /usr/local/src/
#tar zxvf /tmp/software/nginx-1.5.6.tar.gz
cd nginx-1.5.6

# /usr/local/nginxにインストール
./configure \
--prefix=/usr/local/nginx \
--user=nginx \
--group=nginx \
--pid-path=/var/run/nginx/nginx.pid \
--lock-path=/var/run/nginx/nginx.lock \
--error-log-path=/var/log/nginx/error.log \
--http-log-path=/var/log/nginx/access.log \
--with-openssl=/usr/local/src/openssl-1.0.1c \
--with-zlib=/usr/local/src/zlib-1.2.8 \
--with-http_ssl_module \
--with-http_realip_module \
--without-http_ssi_module

make && make install
