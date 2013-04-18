#!/bin/bash

HOME_VIRTUALENV="/home/virtualenv"

mkdir -p $HOME_VIRTUALENV
cd $HOME_VIRTUALENV

virtualenv bandersnatch
cd bandersnatch
bin/pip install -r https://bitbucket.org/ctheune/bandersnatch/raw/stable/requirements.txt

cat <<EOF > bandersnatch.conf
[mirror]
directory = /home/virtualenv/bandersnatch/pypi
master = https://pypi.python.org
timeout = 10
workers = 3
stop-on-error = false
delete-packages = true
#[statistics]
#; A glob pattern matching all access log files that should be processed to
#; generate daily access statistics that will be aggregated on the master PyPI.
#access-log-pattern = /var/log/nginx/*.pypi.tibux.org*access*
EOF

bin/bandersnatch -c bandersnatch.conf mirror

### NGINX CONFIG
#server {
#  listen 0.0.0.0:80;
#  server_name $HOME_VIRTUALENV/bandersnatch/pypi/web;
#  root ;
#  autoindex on;
#  charset utf-8;
#}

### CRON JOBS
#LC_ALL=en_US.utf8
#*/2 * * * * root $HOME_VIRTUALENV/bandersnatch/bin/bandersnatch mirror |& logger -t bandersnatch[mirror]
##12 * * * * root $HOME_VIRTUALENV/bandersnatch/bin/bandersnatch update-stats |& logger -t bandersnatch[update-stats]

### LINKS
# http://www.pypi-mirrors.org/
# https://pypi.python.org/pypi/bandersnatch

