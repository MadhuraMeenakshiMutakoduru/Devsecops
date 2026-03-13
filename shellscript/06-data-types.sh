#!/bin/bash
#Number or strings
NUM1=$1
NUM2=$2

TOTAL=$(($NUM1+$NUM2))
echo "$TOTAL"

#ARRAYS
THINGS=("PEN" "PENCIL" "LAPTOP" "GUN")
echo "Things are ${THINGS[@]}"
echo "Things are ${THINGS[0]}"
echo "Things are ${THINGS[1]}"
echo "Things are ${THINGS[2]}"
echo "Things are ${THINGS[3]}"


