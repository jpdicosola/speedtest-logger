#! /bin/bash

fileName="speed_log.txt"
IPData=$(curl -s ifconfig.me/all)
IPAddress=$(echo $IPData | awk '{print $2}')
HostName=$(echo $IPData | awk '{print $4}')

echo $(date) >> $fileName
echo $IPAddress >> $fileName
echo $HostName >> $fileName

../speedtset-cli/speedtest-cli --simple >> $fileName 
echo >> $fileName
