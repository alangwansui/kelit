#! /bin/bash
log_src='[t110_backup_pg.sh]'
echo $log_src[`date +%F.%H:%M:%S`]' Starting PostgreSQL backup process'

#list of postgres server to backup
PG_HOSTS=$(pg_lsclusters -h | awk '{ print $3}')
echo $log_src[`date +%F.%H:%M:%S`]' Local PG ports--> '$PG_HOSTS

cd /home/postgres

for p in ${PG_HOSTS[@]}; do
echo $log_src[`date +%F.%H:%M:%S`]' Backup PostgreSQL database '$p
	su postgres /home/postgres/scripts/pg_backup.sh bva $p
done

echo $log_src[`date +%F.%H:%M:%S`]' Delete old pg_backup (> 15days)'
find /home/postgres/pg_backup/* -maxdepth 0 -mtime +16 -exec rm {} \;

echo $log_src[`date +%F.%H:%M:%S`]' End Script'

exit 0

