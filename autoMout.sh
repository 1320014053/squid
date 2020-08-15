#!/bin/bash
echo "sbdjm sbdjm sbdjm"
read  -p "请输入用户名称1:" name1
read  -p "请输入用户名称2:" name2
read  -p "请输入用户名称3:" name3
echo "$name1"
echo "$name2"
echo "$name3"
apt-get update
apt-get install vim squid3 apache2-utils -y
wget -P /etc/squid/ https://raw.githubusercontent.com/1320014053/squid/master/blacklist.list
htpasswd -c /etc/squid/passwd sbdjm sbdjm
htpasswd /etc/squid/passwd $name1 $name1
htpasswd /etc/squid/passwd $name2 $name2
htpasswd /etc/squid/passwd $name3 $name3
echo "$name1" >> /etc/squid/uu11.list
echo "$name2" >> /etc/squid/uu22.list
echo "$name3" >> /etc/squid/uu33.list
rm -r /etc/squid/squid.conf
wget -P /etc/squid/ https://raw.githubusercontent.com/1320014053/squid/master/squid.conf
exit 0
