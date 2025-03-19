#!/bin/bash

#Name= Rishab Kanoujia
#Wed Mar 19 18:24:05 UTC 2025
#Project: In the given directory, if you find files more than given size xx or files older then the given days yy then compress those files and move in a archive folder.
#This is Real Life Project to keep cleaning the disk and helping not to clog the server.

<<comment
Steps:
- Provide the path of directory.
- Check if the directory is present or not.
- Create 'archive' folder if not already present.
- Find all the files with size more than xx.
- Compress each file.
- Move the compressed files in archive folder.
- Make a Cronjob to run script at desired time.
comment


#Variables
BASE=/workspaces/Shell-Projects-and-Practice/Projects/Project2
DAYS=10
DEPTH=1
RUN=0

#Check if the directory is present or not
if [ ! -d $BASE ]
then 
    echo "Directory DOes not Exit: $BASE"
    exit 1
fi

#Create 'archive' folder if not present
if [ ! -d $BASE/archive ]
then 
    mkdir $BASE/archive
fi

#Find the list of files larger than 20 MB
for i in 'find $BASE -maxdepth $DEPTH -type f -size +20MB'
do
    if [ $RUN -eq 0 ]
    then
        echo "[($date +"%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
        gzip $i || exit 1
        mv $i.gz $BASE/archive || exit 1
    fi
done