#!/bin/bash

#check if folder exit
#if [[ -d folder_name ]]

#check if folder does not exit
#if [[ ! -d folder_name ]]

#check if File exit
#if [[ -f file_name ]]

#check if File does not exit
#if [[ ! -f file_name ]]

file_name="/workspaces/Shell-Projects-and-Practice/shell prac file/names.txt"

if [[ -f $file_name ]]
then
    echo "Found"
else
    echo "Not Found"
    exit 1
fi