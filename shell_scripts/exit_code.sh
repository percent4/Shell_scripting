#!/bin/bash

# check exit code
date
echo "exit code 1: " $?

abcd
echo "exit code 2: " $?

# use 'exit' to return your exit code
# maximum of exit code is 255
var1=20
var2=30
var3=`echo "$var1*$var2" | bc`
echo "$var1*$var2 = $var3"
exit 5
