#!/bin/bash

#Executes the date command and store the output into the variable
START_TIME=$(date +%s)

echo "Script executes at :$START_TIME"

sleep 10

END_TIME=$(date +%s)

echo "script terminated at:$END_TIME"

TOTAL_TIME=$(($START_TIME-$END_TIME))

echo "script executed in:$TOTAL_TIME"


