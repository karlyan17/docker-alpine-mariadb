#!/bin/sh
echo "starting mariadb"
mkdir -p /run/mysqld
chown -R mysql:root /var/run/mysqld/
su -s /usr/bin/mysqld mysql
