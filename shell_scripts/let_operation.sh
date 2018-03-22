#!/bin/bash

# use let commond for math operation
no1=4
no2=5
let result=no1*no2
echo "let command:" $result

# use ((...)) for math operation
result2=$((no1*no2))
echo "(()) commond:" $result2

