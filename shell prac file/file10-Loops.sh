#!/bin/bash

#Loop are used to run code automatically in loop
<<comment
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
comment

#UseFull Concepts are "break" and "continue"
#Break use to stop and continue used to continue code even when condition is false

#below is example of break
no=6

for i in 1 2 3 4 5 6 7 8 9
do 
    #Break the loop if No. found
    if [[ $no -eq $i ]]
    then
        echo "$no is found"
        break
    fi
    echo "Number is $i"
done

#below is example of continue
for i in 1 2 3 4 5 6 7 8 9
do 
    let r=$i%2
    if [[ $r == 0 ]]
    then
        continue
    fi
    echo "ODD Number is $i"
done

for i in 1 2 3 4 5 6 7 8 9
do 
    (( r=$i%2 && $i%3 ))
    if [[ $r == 0 ]]
    then
        continue
    fi
    echo "ODD Number is $i"
done