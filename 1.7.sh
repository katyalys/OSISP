#!/bin/bash

if [ $# -eq 2 ]
then
	if [ ! -f $1 ]
	then
		{
			echo "The $1 file doesn't exist" >&2
		}
	else
		{
			gcc $1 -o $2 && ./$2
		}
	fi
else
	{
		echo "Enter right number of arguments!" >&2
		echo "First argument: compiling file" >&2
		echo "Second argument: exe-file which stores the result" >&2
	}
fi
