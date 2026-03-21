#!/bin/bash

# echo 1
# echo 2
# echo 3
# echo 4

# for i in {1..199}
# do
# echo $i
# done  

#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script" #create log folder to store track
LOGS_FILE="/var/log/shell-script/$0.log" # create log file with script name inside folder.

if [ $USERID -ne 0 ]; then
   echo "Please run the script with root access" | tee -a $LOGS_FILE
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
      echo "$package already installed...skipping"
    fi
done