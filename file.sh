#!/bin/bash

# Use First Argument As Working Directory
WDIR="$1"
cd "$WDIR"

# third argument is the file name if 3 arguments provided
if [ "$#" -eq "3" ] ; then
    fileName="$3"
else 
    fileName="file1.txt"
fi

if [ "$#" -gt "3" ] ; then
    touch "excess.txt"
#appends all arguments from the third one onward into this excess.txt
    for i in "${@:3}"; do 
        echo "$i" >> "excess.txt"
    done
fi


# if second argument is 1
if [ "$2" -eq 1 ] ; then
# if the file does not exist, write the user into the file
    if [ ! -f $WDIR/$fileName ] ; then
        echo $USER > $fileName 
    fi
elif [ "$2" -eq 2 ] ; then
# if the file exists, create backup directoy and copy the file into the backup directory
    if [ -f $WDIR/$fileName ] ; then
        mkdir $WDIR/backup
        cp $WDIR/$fileName $WDIR/backup
    fi
elif [ "$2" -eq 3 ] ; then 
# if file exists, restore the backup file to working directory and remove the backup from the backup directory
    if [ -f $WDIR/backup/$fileName ] ; then
        cp $WDIR/backup/$fileName $WDIR/$fileName
        rm $WDIR/backup/$fileName
    fi
fi

echo "Finished"
