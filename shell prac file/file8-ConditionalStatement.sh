#!/bin/bash

#process to use compare are called operators
#it is ifelse condition same as python
#To learn about operator search about shell operator, operator example used below like -gt -ge

read -p "Enter your Math marks: " marks

if [[ $marks -gt 40 ]]  #double bracket is new version so practice to use it
then
    echo "You are Passed"
else
    echo "You are failed"
fi

#ELIF condition is used where we have more than one conditions
read -p "Enter your Science marks: " marks

if [[ $marks -ge 90 ]]  #double bracket is new version so practice to use it also make sure to space properly
then
    echo "1st Divisiom"
elif [[ $marks -ge 60 ]]
then
    echo "2nd Division"
elif [[ $marks -ge 40 ]]
then
    echo "3 Division"
else
    echo "You are failed"
fi

#Case is used when you have lot of conditions
echo "Hey Choose an Option"
echo "a for print date"
echo "b for list of scripts"
echo "c to check the current location"

read choice

case $choice in
    a) date;;
    b)                                      #This is how to use multiple operation within one options
        echo "Current file are: "
        ls
        echo "Ending...."
        ;;
    c)pwd;;
    *)echo "Please provide valid value" #This is if user put invalid value
esac
