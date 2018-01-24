# Script the backup mythconverg
#
# Restore it with something like
# mysql --host=localhost --user=root --password=xxxxxx mythconverg < backup.sql

RTIME=7
DATE=`date +"%y%m%d"`
DIR=/home/mythtv/backup

cd $DIR
mysqldump --host=localhost --user=root --password=xxxxxx mythconverg >mythconverg.$DATE
gzip mythconverg.$DATE

find . -name 'mythconverg.*' -mtime +$RTIME -exec rm {} \;
