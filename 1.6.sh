#!/bin/bash
if [[ $# != 3 ]]; then
	echo "Check parameters! Enter 3 parameters!" ;
elif [[ $# == 3 ]]; then
	if [ -f "$1" -a -d "$2" ]; then
		find $2 -maxdepth 1 -type f -name "*.$3" | sort  >$1
	else
		echo "Enter valid parameters!" >&2
	fi
fi
exit 0

