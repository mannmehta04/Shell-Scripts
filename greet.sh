#!/bin/bash

time=`date +%H | bc`

if [ $time -lt 12 ]; then
    echo "gm"
elif [ $time -gt 12 ]; then
    echo "ga"
fi