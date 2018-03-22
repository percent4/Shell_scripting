#!/bin/bash

# float number comparison test
var1=1.5
var2=2.2

if [ `echo "$var1>$var2" | bc` -eq 1 ]
then
    echo "$var1 > $var2."
else
    echo "$var1 <= $var2."
fi
