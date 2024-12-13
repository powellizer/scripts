#!/bin/bash 
 
SSID=$(/sbin/iwgetid --raw) 

if [ -z "$SSID" ] 
then 
    echo "`date --rfc-3339=seconds` WiFi interface is down, trying to reconnect" >> /var/log/wifi-log.txt
    sudo nmcli dev wifi connect MadelineNet 
fi 

echo "WiFi check finished"
