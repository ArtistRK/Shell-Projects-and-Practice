#!/bin/bash

read -p "Which site you want to check? " Site

ping -c 1 "$Site"
status=$?
sleep 5s

echo "$status"

if [[ $status == 0 ]]
then 
    echo "Successfully connect to $Site"
else
    echo "Unable to connect to $Site"
fi