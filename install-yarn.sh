#! /bin/bash

mkdir -p /usr/local/yarn

wget https://github.com/yarnpkg/yarn/releases/download/v1.13.0/yarn-v1.13.0.tar.gz

tar -zxvf yarn-v1.13.0.tar.gz -C /usr/local/yarn

rm -rf yarn-v1.13.0.tar.gz

echo "export PATH=\$PATH:/usr/local/yarn/yarn-v1.13.0/bin" >> /etc/profile

source /etc/profile

yarn -v
