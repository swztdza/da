#! /bin/bash
rm -rf /etc/yum.repos.d/*
yum clean all
echo "[rhel7]
name=rhel7
baseurl=http://192.168.4.254:83/rhel7
enabled=1
gpgcheck=0" > /etc/yum.repos.d/rhel.repo

yum -y install httpd
systemctl restart httpd 
