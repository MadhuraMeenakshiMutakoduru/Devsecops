#!/bin/bash

USERID=$(id -u)
echo "User is id $USERID"

if [ $USERID -ne 0 ]; then
   echo "Please run the script with root access"
   exit 1
fi

echo "Installing nginx"
dnf install nginx -y

if [ $? -n 0 ]; then
   echo "Installing Nginx ..FAILURE"
else
   echo "Installing Nginx..SUCCESS"
fi