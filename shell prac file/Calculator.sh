#!/bin/bash

#Assignment Funtion with Arguement

echo "Write first Number"
read numb1
echo "Write second number should less than first one"
read numb2

function addittion {
    #numb1=$1
    #numb2=$2
    let sum=$numb1+$numb2
    echo " Sum of $numb1 and $numb2 is $sum"
}

addittion #12 13


function difference {
    #numb1=$1
    #numb2=$2
    let sum=$numb1-$numb2
    echo " Difference of $numb1 and $numb2 is $sum"
}
difference #25 13

function Multiple {
    #numb1=$1
    #numb2=$2
    let sum=$numb1*$numb2
    echo " Multiple of $numb1 and $numb2 is $sum"
}
Multiple #25 10

function Divisible {
    #numb1=$1
    #numb2=$2
    let sum=$numb1/$numb2
    echo " Divisible of $numb1 and $numb2 is $sum"
}
Divisible #25 10