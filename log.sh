#! /bin/bash

fileName="speed_log.txt"
IPAddress=$(curl -s ifconfig.me)
HostName=$(host $IPAddress | awk '{print $5}')

echo $(date) >> $fileName
echo $IPAddress >> $fileName
echo $HostName >> $fileName

../speedtest-cli/speedtest-cli --simple >> $fileName 
echo >> $fileName
