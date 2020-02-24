#!/bin/bash

#goals:  
#Time + date
###To append additional info to output file, change initial > to >>
###To start output file from the beginning, change initial >> to >

echo -e "\n Current Time and date \n" >> McNeely_outfile.txt
TimeDate=`date | awk '{print ( $4, $5, $2, $3)}'`

echo -e $TimeDate >> McNeely_outfile.txt


#list of all logged in users

echo -e "\n\n List of current users \n" >> McNeely_outfile.txt

NameList=`who|awk '{print ($1)}'`
#Namelist1=`column -t $NameList`

echo $NameList >> McNeely_outfile.txt

#system uptime

echo -e "\n\n System Uptime \n" >> McNeely_outfile.txt
UpTime=`uptime | awk '{print ($3, $4, $5)}'| tr -d ,`
echo "Up "$UpTime >> McNeely_outfile.txt

#write output to log file with readable format


