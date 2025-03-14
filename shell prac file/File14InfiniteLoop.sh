#!/bin/bash

#Infinite Loop work until condition is true
<<comment
while true 
do
    echo "Hi Buddy"
    sleep 2s
done
comment

#Way 2 to use infinite loop is using for loop
for (( ;; ))
do 
    echo "Hi Rishab"
    sleep 2s
done