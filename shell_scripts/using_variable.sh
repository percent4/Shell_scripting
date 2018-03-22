#!/bin/bash

# display user information from the system

echo "User information for userid: $USER"
echo UID: $UID
echo HOME: $HOME

# display echo $ in a string

echo "The cost of the item is \$15"

# testing variables
days=10
guest="Kate"
echo "$guest checked in $days days ago"
days=5
guest="Jessica"
echo "$guest checked in $days days ago"

# assigning a variable value to another variable
value1=10
value2=$value1
echo The resulting value is $value2
