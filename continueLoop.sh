#!/bin/bash
echo "Enter your File Name to read data:"
read filename

if [ -e `pwd`/$filename ] ; then
    echo "Continue Reading from New Line"
	while read -d '.' line; do
        if [ "$line" == "." ]; then
            continue
        fi
		echo $line
	done < $filename
else
	echo "File Not Found"
fi