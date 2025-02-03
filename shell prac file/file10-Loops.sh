#!/bin/bash

#Loop are used to run code automatically in loop

for i in 1 2 3 4 5 6 7 8 9 10
do
    echo "Number is $i"
done

#Using Strings same example
for name in Raju Sham Baburao
do
    echo "Name is $name"
done

#Other way to write For Loop
for i in {1..10}
do
    echo "Number is $i"
done