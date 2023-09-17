#!/bin/bash
echo "Enter your File Name to read data:"
read filename

if [ -e `pwd`/$filename ] ; then
    echo "Printing First Line from File"
	while read -d '.' line; do
		echo $line
        break
	done < $filename
else
	echo "File Not Found"
fi
