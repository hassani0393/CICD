#!/bin/bash

# Created by Mostafa Hassani
# After installation tasks for CentOS7 minimal.

# Setting up selinux to or switching to disabled or permissive mode
sed -i s/^SELINUX=.*$/SELINUX=permissive/ /etc/selinux/config
setenforce 0

# Setting up firewall or turninn it off.
systemctl stop firewalld
systemctl disable firewalld

# Updating and upgrading
yum -y update && yum -y upgrade

# Installing neccessary packeages.
yum -y install epel-release git ansible vim dstat htop iotop glances xorg-x11-xauth atop iftop wget axel nmap bind-utils net-tools conntrack yum-utils \
device-mapper-persistent-data links gcc nmap wget p7zip lvm2

#Installing Oracle jre-8
cd /root
mkdir ./java
cd /java

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies \
--no-check-certificate 'https://docs.google.com/uc?export=download&id=16o_f7O6FTTXsfZmcA0rZGNLjSE1KfZPJ' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=16o_f7O6FTTXsfZmcA0rZGNLjSE1KfZPJ" -O \
jre-8u291-linux-x64.rpm && rm -rf /tmp/cookies.txt

rpm -ivh jre-8u291-linux-x64.rpm

echo "Done."
