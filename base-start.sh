# 用于centos添加yum源和pip源
# 作者：子文
# 邮箱：2418150721@qq.com
# 添加DNS
echo "nameserver 223.6.6.6
nameserver 8.8.4.4
nameserver 223.5.5.5" >> /etc/resolv.conf
yum install wget -y

# 添加aliyun/163源，默认aliyun
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
# wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.163.com/.help/CentOS7-Base-163.repo
yum clean all
yum makecache
yum update -y
yum install vim curl git -y

# 添加pip,pip源
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
rm -rf get-pip.py
mkdir .pip
echo -e "[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple/" > ~/.pip/pip.conf

# rpm安装mysql
# wget http://repo.mysql.com/mysql57-community-release-el7-8.noarch.rpm
# rpm -ivh mysql57-community-release-el7-8.noarch.rpm
# rm -rf mysql57-community-release-el7-8.noarch.rpm
# yum -y install mysql-server
# systemctl start mysqld
# systemctl enable mysqld
# systemctl daemon-reload

# 安装python3.6.8
yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gcc make
wget https://www.python.org/ftp/python/3.6.8/Python-3.6.8.tar.xz
tar -xvJf Python-3.6.8.tar.xz
cd Python-3.6.8 && ./configure prefix=/usr/local/python3 && make && make install
ln -s /usr/local/python3/bin/python3 /usr/bin/python3
# 设置pip3
ll /usr/local/python3/bin/pip*
ln -s /usr/local/python3/bin/pip3 /usr/bin/pip3
pip3 install --upgrade pip
rm -rf /root/Python*
pip3 install Django==2.0
pip3 install pymysql


