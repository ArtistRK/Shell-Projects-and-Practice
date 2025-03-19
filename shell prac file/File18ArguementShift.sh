#!/bin/bash

#Arguement Shifting
#To create a user provide username and description

echo "Creating User"
echo "User name is $1"

echo "Description is $2"
#when running above second arguement is just one word

#using shift we element all used arguement like $1 and print all rest, Below is example

shift
echo " Description is $@"