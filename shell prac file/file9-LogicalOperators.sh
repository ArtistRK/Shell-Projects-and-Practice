#!/bin/bash

#Logical Operators &&, ||, !
# && work when both codition are true
# || work when one of the condition is true

<<comment
read -p "What is your Age? " age
read -p "Your Country? " Country


if [[ $age -ge 18 ]] && [[ $country == India ]]  #for equal "==" to -eq is not used here as it is used only for numeric values not strings
then 
    echo "You can Vote"
else 
    echo "You cannot Vote"
fi


#Or Operator mean if one of the condition is true
if [[ $age -ge 18 ]] || [[ $country == India ]]  #for equal "==" to -eq is not used here as it is used only for numeric values not strings
then 
    echo "You can Vote"
else 
    echo "You cannot Vote"
fi
comment

#Using both the operator in one go and without ifelse statement
age=20

[[ $age -ge 18 ]] && echo "You are an Adult" || echo "You are Minor"