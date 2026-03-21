#!/bin/bash

USERID=$(id -u)
echo "User is id $USERID"

if [ $USERID -ne 0 ]; then
   echo "Please run the script with root access"
   exit 1
fi

VALIDATE(){
    if [ $1 -nq 0 ]; then
   echo "$2..FAILURE"
   exit 1
else
   echo "$2..SUCCESS"
fi
}

dnf install nginx -y
VALIDATE $? "INSTALLING NGINX"

dnf install mysql -y
VALIDATE $? "INSTALLING MYSQL"

dnf install nodejs -y
VALIDATE $? "INSTALLING NODEJS"
