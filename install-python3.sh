#! /bin/bash
# author:ziwen
# mail:2418150721@qq.com

# 安装python3.6.8
yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gcc make
wget https://www.python.org/ftp/python/3.6.8/Python-3.6.8.tar.xz
tar -xvJf Python-3.6.8.tar.xz
cd Python-3.6.8 && ./configure prefix=/usr/local/python3 && make && make install
ln -s /usr/local/python3/bin/python3 /usr/bin/python3
ll /usr/local/python3/bin/pip*
ln -s /usr/local/python3/bin/pip3 /usr/bin/pip3
pip3 install --upgrade pip
rm -rf /root/Python*