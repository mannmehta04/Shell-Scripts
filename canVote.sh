#!/bin/bash

read year
# echo $year

curyear=`date +%Y`

age=$(($curyear-$year))

echo $age

if [ $age -lt 18 ]; then
    echo "you are not eligible"
else
    echo "you are eligible"
fi