#!/bin/bash
echo "ServerName ${SERVERNAME}" >> /etc/apache2/apache2.conf
if [ -z "$(ls -A /etc/apache2/)" ]
then
  cp -rv /apache_orig/* /etc/apache2
fi
#bin/bash -c "/usr/sbin/apache2ctl"
#certbot -n --apache --agree-tos -m gerald.leikam@aol.com -d sub1.apache-proxy.owncloud.works

bin/bash -c "/usr/sbin/apache2ctl -DFOREGROUD"