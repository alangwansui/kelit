#! /bin/bash 

log_src='[backup_root.sh]'
echo $log_src[`date +%F.%H:%M:%S`]' Starting backup process'

tar cpf /mnt/backup/backup_root.tar --exclude-vcs --exclude-caches-all --exclude=/proc --exclude=/tmp --exclude=/home --exclude=/media --exclude=/dev --exclude=/lost+found --exclude=/mnt --exclude=/sys --exclud$

echo $log_src[`date +%F.%H:%M:%S`]' End Script'
exit 0
