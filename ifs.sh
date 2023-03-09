#!/bin/bash

#colon specified as separator between inputs
IFS=$":"
INPUT="a:b:c:d"
for field in $INPUT; do
    echo $field
done
#unset IFS

INPUT="a b c d"
for field in $INPUT; do
    echo $field
done