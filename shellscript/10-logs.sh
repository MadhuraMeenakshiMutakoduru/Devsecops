#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script" #create log folder to store track
LOGS_FILE="/var/log/shell-script/$0.log" # create log file with script name inside folder.

if [ $USERID -ne 0 ]; then
   echo "Please run the script with root access" | tee -a $ LOGS_FILE
   exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
   echo "$2....FAILURE" | tee -a $LOGS_FILE
   exit 1
else
   echo "$2....SUCCESS" | tee -a $LOGS_FILE
fi
}

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "INSTALLING NGINX"

dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "INSTALLING MYSQL"

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "INSTALLING NODEJS"
