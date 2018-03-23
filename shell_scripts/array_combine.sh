#!/bin/bash

# initial two arrays
city=(Beijing Nanjing Shanghai)
person=(Cai Wang Tang)

# combian two arrays
declare -a combine
combine=(${city[*]} ${person[*]})

# output combine array
element_count=${#combine[*]}
index=0
while [ $index -lt $element_count ]
do
    echo "Element[$index]=${combine[$index]}"
    let index=$index+1
done
echo

# another way to combine arrays
unset combine
combine[0]=${city[*]}
combine[1]=${person[*]}

# output combine array
element_count=${#combine[*]}
index=0
while [ $index -lt $element_count ]
do
    echo "Element[$index]=${combine[$index]}"
    let index=$index+1
done
echo

