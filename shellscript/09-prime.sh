#!/bin/bash

NUMBER=$(echo "ENTER A NUMBER")
if [ $NUMBER % 2 = 0 ]; then
   echo "$NUMBER is EVEN NUMBER"
else 
   echo "$NUMBER is ODD NUMBER"
fi