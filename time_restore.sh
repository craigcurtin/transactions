#!/bin/bash


set -x 

for F in `ls $HOME/tmp/*.csv` ; do
	
    FILE=`basename ${F}`
    echo "${FILE}" 
	# Replace 'your_unix_time_here' with the actual Unix time you want to convert
	unix_time=your_unix_time_here
	
	# Use the date command to convert Unix time to ASCII time
	ascii_time=$(date -d @"$unix_time" +"%Y-%m-%d %H:%M:%S")
	
	echo "Unix Time: $unix_time"
	echo "ASCII Time: $ascii_time"
	
	done
