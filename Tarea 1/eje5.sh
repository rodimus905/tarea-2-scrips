#!/bin/bash 

for variables in $@ 
do
    test -f $variables 
    if[$2 -eq 0]
    then
       echo "$ variables es archivo"
    else
       test -d $variables 
       if[$? -eq 0]
       then 
          echo "$ variables es directo"
       else
          echo "$ variables no es ni derectorio ni archivo"
fi
fi
done

