#!/bin/sh
echo "starting mariadb"
chown -R mysql:root /var/run/mysqld/
su -s /usr/bin/mysqld mysql
