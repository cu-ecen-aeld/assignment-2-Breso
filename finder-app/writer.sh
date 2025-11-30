#!/bin/bash

if [ $# -eq 2 ]
then
	file=$1
	mkdir -p "$(dirname "$file")"
	word=$2
	echo $word > $file
	if [ $? -ne 0 ]; then
		echo "Could not create file"
		exit 1
	fi
else
	echo "Not enough arguments"
	exit 1
fi
