#!/bin/bash
sum=0
count="$#"
for i in "${@:0}"
do
    ((sum+=$i))
done
echo "$sum"