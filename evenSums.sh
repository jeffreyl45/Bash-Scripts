#!/bin/bash
sum=0
for num in {1..100}; do
    if [ $(($num % 3)) -eq 0 ]; then
        sum=$((sum+num))
    fi
done
echo "$sum"