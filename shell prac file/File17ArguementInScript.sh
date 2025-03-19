#!/bin/bash

#Arguement in Script
#To access the arguement

echo " First Arguement is $1"
echo " Second Arguement is $2"

#How to run this bash File17ArguementInScript.sh Raju Rishab

echo " All the Arguements are $@"
echo " Number of Arguements are $#"

#For Loop to access the values from arguements
for filename in $@
do
    echo "Copying file - $filename"
done