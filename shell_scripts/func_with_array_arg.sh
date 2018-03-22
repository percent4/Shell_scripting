#!/bin/bash

# adding values in an array

function addarray
{
    local sum=0
    local newarray
    newarray=(`echo "$@"`)
    
    for value in ${newarray[*]}
    do
       let sum+=value
    done
    
    echo $sum
}

a=(1 2 3 4 5 6 7 8 9 10)
arg1=`echo ${a[*]}`
result=`addarray $arg1`

echo "The sum of the array is $result"
