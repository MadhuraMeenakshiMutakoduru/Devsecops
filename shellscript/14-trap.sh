 #!/bin/bash

set -e #error handling just get out from execution but wont tell where it is got out for that we trap

trap 'echo "There is a error in #LINE_NO, command $BASH_COMMAND"' ERR
R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script" #create log folder to store track
LOGS_FILE="/var/log/shell-script/$0.log" # create log file with script name inside folder.

if [ $USERID -ne 0 ]; then
   echo -e " $R Please run the script with root access" | tee -a $LOGS_FILE
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
 for package in $@
 do
   dnf list installed $package &>> $LOGS_FILE
   if [ $? -ne 0 ]; then
      echo "$package not insttled ..installing now" 
      dnf install $package -y &>> $LOGS_FILE
      VALIDATE $? "$package INSTALLATION"
    else
      echo -e "$package already installed...$Y skipping $N"
    fi
done