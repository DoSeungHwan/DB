#!/bin/bash
date=$(date '+%Y-%m-%d')
if [ ! -d /DB_Backup ]; then
        echo $(mkdir /DB_Backup)
        echo $(mysqldump -u root -p'itbank'--all-databases > /DB_Backup/DB_ALL.$HOSTNAME.$date)
else
        echo $(mysqldump -u root -p'itbank'--all-databases > /DB_Backup/DB_ALL.$HOSTNAME.$date)
fi
echo `gzip /DB_Backup/DB_ALL.$HOSTNAME.$date`
echo `scp /DB_Backup/DB_ALL.$HOSTNAME.$date.gz root@192.168.1.100:/Ansible/DB_ALL/backup/`
echo $(rm -rf /DB_Backup/*)
