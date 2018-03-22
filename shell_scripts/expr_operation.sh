#!/bin/bash

# display math operation using expr command
var1=12
var2=13
var3=`expr $var1 \* $var2`
echo "$var1*$var2 = $var3."

# using $[...] for math operation
var1=100
var2=50
var3=45
var4=$[$var1 * ($var2-$var3)]
echo "$var1*($var2-$var3)=$var4."

# operation support only integers
var1=100
var2=45
var3=$[$var1 / $var2]
echo "$var1/$var2 = $var3."
