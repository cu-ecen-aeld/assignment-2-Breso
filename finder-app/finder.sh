#!/bin/bash

if [ $# -eq 2 ]
then
	filesdir=$1
	if [ -d $filesdir ]
	then
		searchstr=$2
		nfiles=$( find $filesdir -type f | wc -l )
		nword=$( grep -R $searchstr $filesdir | wc -l )
		echo "The number of files are $nfiles and the number of matching lines are $nword"
	else
		echo "The dir doesnt' exist"
		exit 1
	fi
else
	echo "Not enough arguments"
	exit 1
fi
