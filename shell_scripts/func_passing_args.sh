#!/bin/bash

# using function passing arguments
# realize +,-,*,/ operation
count()
{
    # check if numbers of args is 3
    if [ $# -ne 3 ]
    then
        echo "The number of arguments is not 3!"
    fi

    let "s=0"
    case $2 in
    +)
        let "s=$1+$3"
        echo "$1+$3 = $s";;
    -)
        let "s=$1-$3"
        echo "$1-$3=$s";;
    ^) # using ^ to replace *
        let "s=$1*$3"
        echo "$1*$3=$s";;
    \/)
        s=`echo "scale=2; $1/$3" | bc`
        echo "$1/$3=$s";;
    *)
        echo "what you input is wrong!";;
    esac
}

echo "Please type your word: (e.g. 1 + 1) "
read a b c
count $a $b $c
