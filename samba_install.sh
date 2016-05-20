#!/bin/bash
yum -y install samba
sed -i '101csecurity = share'     /etc/samba/smb.conf
sed -i '$a[public]\npath = /home/\npublic = yes\nwritable = yes' /etc/samba/smb.conf
service smb restart


