#!/bin/bash

if [ -f "sample.txt" ]; then
    echo "Hello!"
fi

if [ "$#" -ge 3 ]; then
    echo "That's a lot of arguments"
fi