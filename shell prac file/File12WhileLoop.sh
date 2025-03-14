#!/bin/bash

#While Loop work until condition is true

count=0
num=10

while [[ $count -le $num ]]
do 
    echo "$count Number is less 10"
    let count++                               #This will keep increasing count value by one
done

#Read Content from file using while loop

while read mycar
do
    echo "Value from file is $mycar"
done <names.txt