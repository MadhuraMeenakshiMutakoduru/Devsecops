#!/bin/bash

USERID=$(id -u)
#CHECK USER IS ROOT USER OR NOT
if [$USERID -ne 0]; then
    echo "Please enter script wit root acces"
fi
#install services
dnf install nginx -y