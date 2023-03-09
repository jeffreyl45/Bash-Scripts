#!/bin/bash
if [ $# -eq 2 ]; then
    echo $1
    echo $2
else
    echo "Incorrect Number of Inputs"
fi
echo $0
echo $$
