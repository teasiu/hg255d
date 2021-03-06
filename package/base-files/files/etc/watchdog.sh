#!/bin/sh
#sleep 100
DATE=`date +%Y-%m-%d-%H:%M:%S`
tries=0
echo --- my_watchdog start ---
while [[ $tries -lt 5 ]]
do
        if /bin/ping -c 1 114.114.114.114 >/dev/null
        then
                echo --- exit ---
#               echo $DATE OK >>my_watchdog.log
                exit 0
        fi
        tries=$((tries+1))
        sleep 10
#       echo $DATE tries: $tries >>my_watchdog.log
done
echo $DATE network restart >>my_watchdog.log
/etc/init.d/network restart