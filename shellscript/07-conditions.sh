#!/bin/bash

NUM=90

if [$NUM -gt 18]; then
   echo "Eligble to vote"
elif [$NUM -eq 68]; then
   echo "hmmm"
else
   echo "NOT eligible to vote"
fi 
