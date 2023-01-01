#!/bin/bash

echo "Purpose: Mini Project on Bash script"
echo "Author: Sankalp Salve"
echo "Date: 1 Jan 2023"



echo "--------------------------------------------------------------------------"

date=$(date|awk '{print $1,$3,$2,$6}')
time=$(date|awk '{print $4}')

echo "Date is: $date"
echo "Time is $time"


echo "--------------------------------------------------------------------------"

currentUser=$(w)
echo "The current users are:"
echo ""
echo "$currentUser"

echo "--------------------------------------------------------------------------"




echo "Disk Space: "
total=$(df -h|xargs|awk '{print $21}')
remaining=$(df -h|xargs|awk '{print $23}')
used=$(df -h|xargs|awk '{print $22}')
echo "Total space is : $total"
echo ""
echo "Remaining space is : $remaining"
echo ""
echo "Used space is: ($used)"


echo "--------------------------------------------------------------------------"

echo "Ram Space: "

totalRam=$(free | xargs | awk '{print $8}')
usedRam=$(free|xargs|awk '{print $9}')
remainingRam=$(free|xargs|awk '{print $10}')

echo "Total Ram is: $totalRam(Bytes)"
echo ""
echo "Remaining ram is $remainingRam(Bytes)"
echo ""
echo "Used Ram is: $usedRam(Bytes)"
echo ""


echo "--------------------------------------------------------------------------"

echo "Top 5 CPU processes: "

processes=$(top|head -12 | tail -6)
echo "$processes"

echo ""

echo "--------------------------------------------------------------------------"
echo ""
echo "End of the program"
#thank you for reading












































