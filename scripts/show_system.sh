##!/bin/bash
#It's a simple script which prints basic information of system
#>How long its up
#>Users
#>CPU info
echo "*******************Uptime*******************"
uptime=`uptime`
echo $uptime
echo "*******************Users*******************"
w=`w`
echo $w
echo "********************CPU********************"
lscpu