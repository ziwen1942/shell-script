shell-script
============
>在制作镜像环境的过程中，为了方便后续部署，将部署操作脚本化<br>
>其中包括了`mysql`,`redis`,`nodejs`,`yarn`,`python3`,`sqlmap`,`supervisor`,`doccker-ce`<br>

base-start.sh
-------------
>包括了`Python3.6.8`，`MySQL5.7.24`，更新`yum`配置，`pip/pip3`配置的操作<br>
>部分软件添加到/etc/profile后需执行source /etc/profile来更新环境变量。<br>
