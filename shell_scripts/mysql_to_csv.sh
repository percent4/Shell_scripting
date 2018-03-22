#!/bin/bash

MYSQL=`which mysql`
PWD=147369

#show databases in mysql
echo "database in mysql:"
echo "*******************"
$MYSQL -u root -p$PWD << EOF
show databases;
EOF
echo "*******************"
#choose a database 
read -t 60 -p "choose a database:" database

#show tables in the database
echo "tables in $database"
echo "*******************"
$MYSQL -u root -p$PWD << EOF
use $database
show tables;
EOF
echo "*******************"

#choose a table
read -t 60 -p "choose a table:" table

statement="use $database;select * from $table;"

#write the table into 1.log file
$MYSQL -u root -p$PWD >1.log << EOF
$statement
EOF

echo "Downloading $table from $database in mysql..."
sleep 1
echo "now converting it to csv file..."
sleep 1

#cat the 1.log file and convert it to csv file
cat 1.log | while read line
do
echo $line | tr " " ","
done > $database"_"$table.csv

sleep 1
#remove the temporal file 1.log
rm -rf 1.log

#echo the infomation
echo "Convert $table into $database"_"$table.csv."
sleep 1
echo "Done successfully!Please check the file!"
