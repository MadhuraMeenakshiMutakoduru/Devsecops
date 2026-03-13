#!/bin/bash

NUM=$1

if [$NUM -gt 18]; then
   echo "Eligble to vote"
else
   echo "NOT eligible to vote"
fi 
