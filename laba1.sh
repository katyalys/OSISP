#!/bin/bash

if [[ $# != 1 ]]; then
	echo "Check parameters! Enter 1 parameters!" >&2 ;
fi

if [ -d "$1" ]; then
	files=$(find $1 -type f)
	for i in $files; do
	 	stat -c "%A %s %n" $i
         	((count++))
	done

	echo Count of all files $count
else
	echo "Invalid catalog!" >&2
fi
exit 0
