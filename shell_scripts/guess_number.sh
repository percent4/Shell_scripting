#!/bin/bash

# generate a random integer between 0 and 100
answer=`expr $RANDOM % 100`

guess=101
while [ $guess -ne $answer ]
do
    read -t 20 -p "Enter a integer between 0 and 100:" guess
    if [ $guess -eq $answer ]
    then
        echo "You are right! The answer is $answer!"
    elif [ $guess -gt $answer ]
    then
        echo "Too high!"
    else
        echo "Too low!"
    fi
done
