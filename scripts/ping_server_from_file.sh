#!/bin/bash
#Script provide to automative check for which servers are currently up
#it uses ping command
#iterate through all IPs in ./file.txt
#Syntax: ./ping_server.sh servers.txt
#If first argument is not a file, then print echo with correct syntax
if [ ! -f "$1" ] ; then
echo "$0 is not a valid file, try again...\nSyntax: ./ping_server.sh servers.txt"
exit 1
fi
up=0
down=0
#Ping servers available in file, each record 3 times
while read server
do
#-c3 stands for three pings each IP
ping -c3 "$server"&&
#If ping return true it print output to file servers_up
#with syntax: 0.0.0.0 HH:mm dd/mm/YYYY
echo "$server $(date +"%T %d/%m/%Y")">> servers_up && ((up=up+1)) && ((down=down-1)) ||
#If ping return false print output to file servers_down
#with syntax: 0.0.0.0 HH:mm dd/mm/YYYY
echo "$server $(date +"%T %d/%m/%Y")">> servers_down && ((down=down+1))
done < "$1"
#Optional print servers_up/servers_down after finish script
echo "Servers up: "
tail -n $up servers_up
echo "Servers down: "
tail -n $down servers_down
