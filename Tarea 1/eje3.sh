#!/bin/bash

read -p 'ingresar dir/arch: ' VARIABLE
test -f $VARIABLE               ## testeo de archivo regular

if [ "$?" -eq "0" ]             #condicion para ver si lo ingresado es verdadero o falso
then
    echo "es un archivo regular"
else
   test -d $VARIABLE            ##testeo de directorio
if [ "$?" -eq "0" ]
then
    echo "es un directorio"
else
    echo "es otro tipo de archivo"
fi
fi
