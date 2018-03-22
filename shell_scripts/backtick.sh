#!/bin/bash

# using the backtick character
testing=`date`
echo "The date and time are: " $testing

#copy the /usr/bin directory listing to a log file
today=`date +%Y%m%d`
ls /usr/bin -al > log.$today
