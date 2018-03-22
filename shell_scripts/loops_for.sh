#!/bin/bash

# using for loop : a simple example
for test in Alabama Alaska Colorado "New York"
do
    echo The next is $test
done

echo

# using for loop : list files
for file in $HOME/*
do
    if [ -d "$file" ] 
    then
        echo "$file is a directory"
    elif [ -f "$file" ]
    then
        echo "$file is a file"
    else
        echo "$file is not a directory or file"
    fi
done
echo

# testing the C-style for loop
for (( i=1; i<=10; i++ ))
do
    echo "The next number is $i"
done
