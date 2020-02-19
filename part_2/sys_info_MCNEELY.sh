#!/bin/bash

#goals:  
#Time + date
echo "Current Date and Time" > McNeely_outfile.txt

date >> McNeely_outfile.txt

#list of all logged in users

echo "list of current users" >> McNeely_outfile.txt

NameList=`who|awk '{print ($1)}'`

echo $NameList >> McNeely_outfile.txt

#system uptime

UpTime=`w | awk '{print ($2)}'`

#write output to log file with readable format


