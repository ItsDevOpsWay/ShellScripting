#!/bin/bash


##################
#Task:           Script to print numbers divisible by 3 and 5 but not 15.
#Author:         Naveen Kumar
#Version:        V1
##################

echo "Script to print numbers divisible by 3 and 5 but not 15"

for i in {1..50}; do
	if (( (i % 3 == 0 || i % 5 == 0) && i % 15 != 0 )); then
		echo $i

	fi
done
