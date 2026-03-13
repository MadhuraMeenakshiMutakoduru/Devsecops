#!/bin/bash

#USE AND PRACTICE SPECIAL VARIABLE PROVIDED BY SHELL
echo "All args passed to script $@"
echo "No. of variables passed to script $#"
echo "Name of tis script $0"
echo "Present working directory is $PWD"
echo "User who is running this script is $USER"
echo "Home directory of user is $HOME"
echo "PID of script is $$"
sleep 10 &
echo "PID of recently executed process is $!"
echo "All args passed to script is $*"