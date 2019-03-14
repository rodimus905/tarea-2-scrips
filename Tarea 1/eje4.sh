#!/bin/bash

test -d $1 
if [ $? -eq 0 ]
then
    echo "Es directorio"
else
    test -f $1
    if [ $? -eq 0 ]
    then
        echo"Es archivo"
    else
        echo"Es otro archivo"
    fi
fi

