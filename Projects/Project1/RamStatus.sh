#!/bin/bash

#Monitoring free RAM space

Free_Space=$(free -mt | grep "Total" | awk '{print $4}')
TH=500

if  [[ $Free_Space -lt $TH ]]
then
    echo " You have sufficient Ram "
else
    echo "Warning Ram is running low "
fi