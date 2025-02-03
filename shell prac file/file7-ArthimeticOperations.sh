#!/bin/bash

#Math calculations using let commands
x=10
y=2

let mul=$x*$y #let here tell to arthimetic action here
echo "$mul"

let add=$x+$y
echo "$add"

#using direct command
echo "substraction: $(($x-$y))" #add $ and put var in double bracket