#!/bin/bash

####################
#Task:             Program to print even numbers
#Author:           Naveen Kumar
#Version:          V1
####################


for i in {1..20}; do
	if (( i % 2 == 0 )); then
		echo $i
	fi
done

