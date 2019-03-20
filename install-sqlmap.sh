#! /bin/bash

touch /root/sqlmaplog.txt
touch /etc/supervisor/conf.d/sqlmap.conf
cd /opt
git clone https://github.com/sqlmapproject/sqlmap.git

echo "[program:sqlmap]
user=root
command=python sqlmapapi.py -s --adapter=gevent
directory=/opt/sqlmap/
autorestart=true
startsecs=5
startretries=10
redirect_stderr=true
stdout_logfile=/root/sqlmaplog.txt
stderr_logfile=/root/sqlmaplog.txt" >> /etc/supervisor/conf.d/sqlmap.conf

supervisorctl update
supervisorctl start sqlmap
supervisorctl tail sqlmap
