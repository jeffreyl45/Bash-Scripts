#!/bin/bash

INPUT="one two three"
for item in $INPUT ; do
    echo $item
done

for ((i=0 ; i < 10 ; i++)) ; do
    echo "Counter: $i"
done

COUNT=0
while [ "$COUNT" -lt 10 ] ; do
    echo "$COUNT"
    COUNT=$( expr $COUNT + 1 )
done