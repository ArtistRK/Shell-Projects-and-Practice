#!/bin/bash

#Bash Variables "Random" and "UID" are very useful.
#Random is useful to get random pass or number
#UID is to direrctory ID of User.

#Gnerating random number between 1 and 6
NO=$(( $RANDOM % 6 + 1 ))
echo "$NO"

#Check if the user is root or not
#UID of rooot user is always 0

if [[ $UID -eq 0 ]]
then
    echo "User is root"
else
    echo "User is not roor"
fi
