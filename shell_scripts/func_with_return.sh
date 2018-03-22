#!/bin/bash

# using the return command in a function

function db1 {
    read -p "Enter a value: " value
    echo "doubling the value"
    return $[ $value * 2 ]
}

function db2 {
    read -p "Enter a value: " value
    echo $[ $value * 2 ]
}

db1
echo "The new value is $?"
db2
