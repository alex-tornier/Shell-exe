wc -l /var/log/auth.log >> /home/alex/documentation/job8/number_connection_`date +%F-%H:%M`.txt

if [ -e backup ]
then
cd /home/alex/documentation/job8/backup
tar -rvf archive.tar ../number_connection_`date +%F-%H:%M`.txt
else
mkdir /home/alex/documentation/job8/backup
cd /home/alex/documentation/job8/backup
tar -rvf archive.tar ../number_connection_`date +%F-%H:%M`.txt
fi
