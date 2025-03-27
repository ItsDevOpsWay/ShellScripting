#!/bin/bash

################
#Task:         To print the Odd numbers
#Author:       Naveen Kumar
#Version:      V1
################

echo "Script to print the Odd numbers from 1 to 30:"

for i in {1..30}; do
	if (( i % 2 != 0 )); then
		echo $i
	fi
done
	       
