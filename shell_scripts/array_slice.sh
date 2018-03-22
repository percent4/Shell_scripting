#!/bin/bash

# array slice, remove, replace

city=(Nanjing Atlanta Massachusetts Marseilles)

# array slice
echo "Extracting Substring"
echo ${city[*]:0} # start from the first element
echo ${city[*]:1} # start from the second element
echo ${city[*]:3} # start from the fourth element
echo ${city[*]:0:2} # start from the first element, two elements
echo

# remove substring in a array
echo "Removing Substring"
echo ${city[*]#M*a} # shortest substring from M to a 
echo ${city[*]##M*a} # longest substring from M to a
echo

# replace substring in a array
echo "Replacing Substring"
echo ${city[*]/M*s/Year} # replace the first substring that matches M*s
echo ${city[*]//M*s/Year} # replace all substrings that match M*s
