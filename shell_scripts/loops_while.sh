#!/bin/bash

# using while loop
var=10

while [ $var -gt 0 ] 
do
   echo $var
   var=$[ $var - 1 ]
done
echo

# breaking out of a for loop
for var in 1 2 3 4 5 6 7 8 9 10
do
    if [ $var -eq 5 ]
    then
        break
    fi
    echo "Iteration number: $var"
done
echo -e "The for loop is completed.\n\n"

# 8*8 chess board
for((i=1; i<=8; i++))
do
    for((j=1; j<=8; j++))
    do
        if [ $[ (i+j)%2 ] -eq 0 ]
        then
            echo -ne "\e[1;40m  \e[0m"
        else
            echo -ne "\e[1;47m  \e[0m"
        fi
     done
     echo ""
done
