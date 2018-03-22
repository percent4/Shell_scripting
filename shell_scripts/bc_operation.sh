#!/bin/bash

# using bc in shell
var1=100
var2=45
var3=`echo "scale=4; $var1 / $var2" | bc`
echo "$var1/$var2 = $var3"

# using << EOF for bc
var1=10.46
var2=43.67
var3=33.2
var4=71

var5=`bc << EOF
scale=4
a1 = ($var1*$var2)
b1 = ($var3*$var4)
a1+b1
EOF
`

echo The final answer is $var5
