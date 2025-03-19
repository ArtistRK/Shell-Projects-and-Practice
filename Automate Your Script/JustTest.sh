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


#Read Content from CSV file using while loop
while IFS="," read id name age
do
    echo "Id is $id"
    echo "Name is $name"
    echo "Age is $age"
done <Test.csv

#Enhanced Version of above example
cat Test.csv | awk 'NR!=1 {print}' | while IFS="," read id name age
do
    echo "Id is $id"
    echo "Name is $name"
    echo "Age is $age"
done