#!/bin/bash

# using associative array

declare -A fruits
fruits=([apple]='100 dollars' [orange]='150 dollars' [pear]='125 dollars')

echo "Apple costs ${fruits[apple]}"
echo 'all keys:' ${!fruits[*]}
echo

echo -e "Fruit\tCost"
for ind in "${!fruits[@]}"
do
    echo -e "$ind\t${fruits[$ind]}"
done
