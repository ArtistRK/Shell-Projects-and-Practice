#!/bin/bash

#Funtion with Arguement

function welcomeNote {
    echo "-------------"
    echo "Welcome $1"     #Here we are adding functionality to add arguement value one
    echo "Age $2"        #Here we are calling second arguement from command Line
    echo "_____________"
}
welcomeNote Rishab 25
welcomeNote Nav 13
