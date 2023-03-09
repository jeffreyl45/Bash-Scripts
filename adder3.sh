#!/bin/bash
sum=0
count="$#"
for ((i=1; i <= 5; i++))
do
    ((sum+=$i))
done
echo "$sum"