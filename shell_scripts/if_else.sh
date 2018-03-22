#!/bin/bash

# testing if else section

testuser=badtest
if grep $testuser /etc/passwd
then
    echo The files  for user $testuser are:
    ls -a /home/$testuser/.b*
else
    echo "$testuser does not exist on this system"
fi
