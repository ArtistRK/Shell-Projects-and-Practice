#!/bin/bash

#Name= Rishab Kanoujia
#Wed Mar 19 18:24:05 UTC 2025
#Creating a Local user by giving Name as arguement and creating pasword automatically.

#Script Should be executed with root user else exit with status code  and error message.
# Script will take 1st arguement as user and rest will be trated as comment.
#Auto Genereate password for user.
#Give us output = User name, password and host name.

<<comment
- Check if the screipt is being executed with superuser privileges.
- If the user doesn't supply at least one arguement, then give them help.
- The first of the parameter are the comments.
- The rest of parameters are for the comments.
- Generate a password.
- Create the user with password.
- Check to see if the useradd command succeeded.
- Set password.
- Check to see if the passwd command succedd.
- Force Password change on first login.
- Display the username and passord and the host where user is create.
comment

#Script  should be executed with sudo/root access.
if [[ "${UID}" -ne 0 ]]
then
    echo 'Please run with sudo or root'
    exit 1
fi 

#User should provide atleast one arguement as username else guide them
if [[ "${#}" -lt 1 ]]
then 
    echo "Usage: ${0} USER_NAME [COMMENT]..." 
    echo "Please Prove a user name to create a user with name USER_NAME and Comments field of COMMENT" 
    exit 1
fi 

#Store first arguemnt as username
USER_NAME="${1}"
#echo $USER_NAME

#In case of more than one arguement, store it as account comments.
shift
COMMENT="${@}"
#echo $COMMENT

#Create a password
PASSWORD=$(date +%s%N)
#echo $PASSWORD

#Create a User
useradd -c "$COMMENT" -m $USER_NAME  #We putting comment in "" because it can be multiple arguement

#Check if the user is created
if [[ $? -ne 0 ]]    #"$?" give the status of last command, if successfull or not.
then
    echo "The Account Could not be created"
    exit 1
fi

#Set the password for the user
#echo $PASSWORD | passwd --stdin $USER_NAME  "script is failing at the password-setting step because passwd --stdin is not supported on Debian-based distributions like Ubuntu. The --stdin option is specific to Red Hat-based distributions (RHEL, CentOS, Fedora)."
echo "$USER_NAME:$PASSWORD" | chpasswd

#Check if the password is successfully set or not
if [[ $? -ne 0 ]]
then 
    echo "Password is not set" 
    exit 1
fi
#Force password change on first login
passwd -e $USER_NAME

#Display the username, password and the host where the user is created.
echo
echo "Username: $USER_NAME"
echo 
echo "Password: $PASSWORD"
echo
echo "Host: $(hostname)"


#To Test Swith user using name "su -$USER_NAME" and it will ask for password, enter the genereated pass