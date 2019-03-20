#! /bin/bash

pip install supervisor==3.3.4
mkdir -p /etc/supervisor/conf.d
echo_supervisord_conf > /etc/supervisor/supervisord.conf
echo "[include]
files = /etc/supervisor/conf.d/*.conf" >> /etc/supervisor/supervisord.conf
supervisord -c /etc/supervisor/supervisord.conf
