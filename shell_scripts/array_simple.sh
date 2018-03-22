#!/bin/bash

# array length, index, transverse

city=(Nanjing Beijing Shanghai Zhenjiang)

# array length
echo "The length of array is ${#city[*]}"
echo

#array index
echo "the first element of city is ${city[0]}."
echo

# array transverse
for i in ${city[*]}
do
    echo "city: " $i
done
