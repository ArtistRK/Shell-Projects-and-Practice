#!/bin/bash

#How to store the Key Values Pairs

declare -A myArray
myArray=( [name]=Rishab [age]=24 [City]=Richmond-Hill )

echo "Name is ${myArray[name]}"
echo "Age is ${myArray[age]}"
