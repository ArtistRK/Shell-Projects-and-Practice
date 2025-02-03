#!/bin/bash

myVar="Hey Buddy, How are you?"

myVarLength=${#myVar}
echo "Length of my Var is $myVarLength"

#Print in Upper Case
echo "Upper Case is ${myVar^^}"

#Print in Lower Case
echo "Upper Case is ${myVar,,}"

#Replace Buddy with world
newVar=${myVar/Buddy/Rishab}
echo "Replacing: ${newVar}"

#Slice the String
echo "Slicing the words: ${myVar:4:5}" #4 From where it gonna start and 11 is how many character from 5
