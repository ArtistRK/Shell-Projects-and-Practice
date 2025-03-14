#!/bin/bash
#This is one of real life usefull practical example

#Getting values from the files names.txt

FILE="./names.txt"

for name in $(cat $FILE)
do
    echo "Name is $name"
done

#FOR Loop using ARRAY List
myArray=( 1 2 3 Hello Hi )
length=${#myArray[*]}

for ((i=0;i<length;i++))
do 
    echo "Values of array is ${myArray[$i]}"
done
