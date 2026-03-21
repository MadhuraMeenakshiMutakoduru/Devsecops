#!/bin/bash

USERID=$(id -u)
echo "User is id $USERID"

if [ $USERID -ne 0 ]; then
   echo "Please run the script with root access"
   exit 1
fi

echo "Installing nginx"
dnf install nginx -y

if [ $? -nq 0 ]; then
   echo "Installing Nginx ..FAILURE"
   exit 1
else
   echo "Installing Nginx..SUCCESS"
fi

echo "Installing mysql"
dnf install mysql -y

if [$? -n1 0 ]; then
   echo "INSTALLING MYSQL....FAILURE"
   exit 1
else
   echo "INSTALLING MYSQL"
fi