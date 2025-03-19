#!/bin/bash

#Monitoring free DISK space and sent an Alert Email
#To send an email setup PostFix first

FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep sdc1 | awk '{print$5}' | tr -d %)
TO="rkrishabkanoujia@gmail.com"


if [[ $FU -ge 80 ]]
then
    echo "Warning, disk space is too low, $FU% is used" | mail -s "DISK SPACE ALERT!!!" $TO
else
    echo "All Good, Your space is $FU% used only" | mail -s "DISK SPACE STATUS IS GOOD!!!" $TO
fi

