#!/bin/bash

USERID=$(id -u)

if [$USERID -ne 0]; then
    echo "Please enter script with root access"
fi

dnf install nginx -y