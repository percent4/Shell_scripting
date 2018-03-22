#!/bin/bash

# using double parenthesis

val=11
if (( $val ** 2 > 100 ))
then
    (( var = $val ** 2 ))
    echo "The square of $val is $var."
fi

# using pattern matching

if [[ $USER == j* ]]
then
    echo "Hello $USER"
else
    echo "sorry, I don't know you."
fi 
