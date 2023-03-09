#!/bin/bash
sum=0
count="$#"
for ((i = 1; i <= $count; i ++))
do
    ((sum+=$i))
done
echo "$sum"