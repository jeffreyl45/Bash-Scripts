#!/bin.bash
sum=0
for((i=0;i<101;i=i+2)); do
    ((sum+=$i))
done
echo "$sum"
