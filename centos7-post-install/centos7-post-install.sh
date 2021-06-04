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


echo "Done."
