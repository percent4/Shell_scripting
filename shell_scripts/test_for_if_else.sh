#!/bin/bash

# using numeric test comparisons
# only support integers
var1=10
var2=11
if [ $var1 -gt $var2 ]
then
    max=$var1
else
    max=$var2
fi

echo "max of $var1 and $var2 is $max."

# test string length
# string test comparisons
str1=testing
str2=''
str3='test'
if [ -z $str2 ]
then
    echo "The string $str2 is empty"
else
    echo "The string $str2 is not empty."
fi

if [ $str1 = $str3 ]
then
    echo "$str1 euqals to $str3"
else
    echo "$str1 does not equal to $str3"
fi

# file test comparison

cd $HOME
if [ -e a.txt ]
then
    echo "a.txt exists"
    rm -rf a.txt
else
    date > a.txt
    echo "a.txt has been created."
fi
