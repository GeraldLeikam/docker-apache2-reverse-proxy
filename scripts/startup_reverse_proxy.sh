#!/bin/bash
if [ -z "$(ls -A /etc/apache2/)" ]
then
  cp -rv /apache_orig/* /etc/apache2
fi
echo "ServerName ${SERVERNAME}" >> /etc/apache2/apache2.conf
bin/bash -c "/usr/sbin/apache2ctl -DFOREGROUND"