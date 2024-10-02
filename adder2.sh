#!/bin/bash
sum=0
count="$#"
# $# is the number of arguments passed in after the file name
for ((i = 1; i <= $count; i ++)) 
# add 1 + 2 + 3 +... + number of arguments passed in
do
    ((sum+=$i))
done
echo "$sum"
