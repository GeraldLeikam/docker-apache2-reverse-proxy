#!/bin/bash
echo "ServerName ${SERVERNAME}" >> /etc/apache2/apache2.conf
bin/bash -c "/usr/sbin/apache2ctl -DFOREGROUND"