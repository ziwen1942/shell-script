shell-script
============
在制作镜像环境的过程中，为了方便后续部署，将部署操作脚本化
base-start.sh
-------------
  包括了Python3.6.8，MySQL5.7.24，更新yum配置，pip/pip3配置的操作
   部分软件添加到/etc/profile后需执行source /etc/profile来更新环境变量。
