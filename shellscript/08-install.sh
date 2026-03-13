#!/bin/bash

USERID=$(id -u)

if [$USERID -ne 0]; then
    echo "Please enter script wit root acces"
fi

dnf install nginx -y