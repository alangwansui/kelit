#! /bin/bash 

log_src='[rsync.sh]'
echo $log_src[`date +%F.%H:%M:%S`]' Starting rsync process'

echo $log_src[`date +%F.%H:%M:%S`]' Rsync Backup (PG DBs & Root)...'
/usr/bin/rsync  -vzrtopg --progress --delete /mnt/backup/ rbackup@42.120.43.36::kelit/
echo $log_src[`date +%F.%H:%M:%S`]' Rsync stable storage...'
/usr/bin/rsync  -vzrtopg --progress --delete /opt/openerp/stable/server/openerp/storage/ rbackup@42.120.43.36::storage/kelit/stable
echo $log_src[`date +%F.%H:%M:%S`]' Rsync trunk storage...'
/usr/bin/rsync  -vzrtopg --progress --delete /opt/openerp/trunk/server/openerp/storage/ rbackup@42.120.43.36::storage/kelit/trunk

echo $log_src[`date +%F.%H:%M:%S`]' End rsync Script'
exit 0
