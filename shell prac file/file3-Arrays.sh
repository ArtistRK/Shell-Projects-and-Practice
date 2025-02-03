#!/bin/bash

# Arrays
# Values in arrays are separated by spaces, not commas
myArray=( 1 2 3 hello rishab "Hey buddy!" )

echo "Value at index 3: ${myArray[3]}"   # hello
echo "Value at index 4: ${myArray[4]}"   # rishab
echo "Value at index 5: ${myArray[5]}"   # Hey buddy!

echo "Value of list: ${myArray[*]}"   # Print Whole List

#How to find no. of values in a arrays
echo "The length of Array: ${#myArray[*]}"

#How to get Specific Values
echo "${myArray[*]:1}"
#How to get Specific Values 2-3
echo "${myArray[*]:1:2}" #After first : show from where we want value and second : show how many value we want

#Updating our array with new values
myArray+=( new 9 8 )
echo "Values of new list: ${myArray[*]}"

