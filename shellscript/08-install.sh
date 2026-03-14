#!/bin/bash

USERID=$(id -u)
echo "User is id $USERID"

if [ $USERID -ne 0 ]; then
   echo "Please run the script with root access"
fi