#!/bin/bash

# using the case command

#goods=apple
goods=milk

case $goods in
apple | banana | orange)
    echo "$goods is fruit.";;
tomato | potato | eggplant)
    echo "$goods is vegetable.";;
*)
    echo "$goods is not fruit or vegetable.";;
esac
