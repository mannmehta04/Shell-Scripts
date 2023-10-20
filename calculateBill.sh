#!/bin/bash

read units

if [ $units -gt 100 ]; then
    if [ $units -gt 200 ]; then
        if [ $units -gt 300 ]; then
            totalCost=`echo "$units*0.75" | bc`+`echo "$units*1.50" | bc`+`echo "$units*3.00" | bc`
        fi
        totalCost=`echo "$units*0.75" | bc`+`echo "$units*1.50" | bc`
    fi
    totalCost=`echo "$units*0.75" | bc`
fi
# totalCost=$(($units*0.75))
totalCost=`echo "$units*0.75" | bc`

echo $totalCost