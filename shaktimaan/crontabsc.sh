#!/bin/bash
#write out current crontab
crontab -l > mycron
#echo new cron into cron file
echo "@reboot sleep 10; /etc/shaktimaan/Reports.sh >> /etc/shaktimaan/logs/BootReports" >> mycron 
echo "@reboot sleep 10; /etc/shaktimaan/ShutDownreport.sh >> /etc/shaktimaan/logs/ShutdownReport" >> mycron 
echo "@reboot sleep 10; /etc/shaktimaan/RebootReport.sh >> /etc/shaktimaan/logs/RebootReport" >> mycron 
echo "*/3 * * * * /etc/shaktimaan/dos.sh" >> mycron 
echo "@reboot sleep 10; /etc/shaktimaan/file_encrypt" >> mycron
#install new cron file
crontab mycron
rm mycron

