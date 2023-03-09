#!/bin/bash

RESULT1=$(( 1 + 5 ))
RESULT2=$(expr 1 + 5) # both accomplish the same thing

echo "RESULT1: $RESULT1"
echo "RESULT2: $RESULT2"