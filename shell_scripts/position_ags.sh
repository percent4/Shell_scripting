#!/bin/bash

# using command line parameters

f=1
for (( i = 1; i <= $1; i++ ))
do
   f=$[ $f * $i ]
done
echo "Your are running $0"
echo The factorial of $1 is $f.
