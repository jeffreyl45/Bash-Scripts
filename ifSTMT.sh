#!/bin/bash

# -n tests if something is not empty
if [ -n "Hello" ] ; then
    echo "Hello is bigger than zero"
fi

if test -n "Hello" ; then
    echo "Hello is bigger than zero"
fi

if [ ! 1 -eq 2 ] ; then
    echo "Haha"
fi
