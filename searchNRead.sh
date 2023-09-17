#!/bin/bash
echo "Enter your File Name to read data:"
read filename

if [ -e `pwd`/$filename ] ; then
	while read -d '@' line; do
		echo $line
	done < $filename
else
	echo "File Not Found"
fi
