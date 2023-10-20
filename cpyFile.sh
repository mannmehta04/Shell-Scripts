#!/bin/bash

echo "`ls *.c`"
mkdir c
# mkdir text

for file in `ls *.c`; do
    echo `cp $file c`
done
