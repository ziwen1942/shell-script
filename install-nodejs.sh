#! /bin/bash

mkdir -p /usr/local/nodejs
wget https://nodejs.org/dist/v10.15.2/node-v10.15.2-linux-x64.tar.xz
tar -xvf node-v10.15.2-linux-x64.tar.xz -C /usr/local/nodejs
rm -rf node-v10.15.2-linux-x64.tar.xz
echo "# nodejs" >>/etc/profile
echo "export NODE_HOME=/usr/local/nodejs/node-v10.15.2-linux-x64" >>/etc/profile
echo "export PATH=\${NODE_HOME}/bin:\$PATH" >> /etc/profile
source /etc/profile

node -v
npm -v
# nodejs

#mkdir -p /usr/local/yarn
#wget https://github.com/yarnpkg/yarn/releases/download/v1.13.0/yarn-v1.13.0.tar.gz
#tar -zxvf yarn-v1.13.0.tar.gz -C /usr/local/yarn
