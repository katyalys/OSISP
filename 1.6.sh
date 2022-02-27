#!/bin/bash
if [[ $# != 3 ]]; then
{
	echo "Enter right number of parameters"
	echo "First parameter: file for storing the result"
	echo "Second parameter: name of catalog"
	echo "Third parameter: file extension"
} >&2
elif [[ $# == 3 ]]; then

	if [ -f "$1" -a -d "$2" ] 
	then
		find $2 -maxdepth 1 -type f -name "*.$3" | sort -d >$1
	fi 
	
	if [ ! -d $2 ] 
	then
		echo "This directory doesn't exist" >&2	
		exit 0
	fi
	
	if [ ! -f $1 ] 
	then
		echo "This file doesn't exist" >&2	
		exit 0
	fi
	
fi
exit 0
