#!/bin/bash
for num in {1..10}

do 
    if [[ $(($num%2)) == 0 ]]; then
        continue
    fi

    echo "$num"

done