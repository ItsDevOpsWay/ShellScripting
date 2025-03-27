#!/bin/bash

########################
#Task:                To perform if-else condition
#Author:              Naveen Kumar 
#Version              V1
########################

#Setting a and b values first.
a=10
b=20

#Condition

if [ "$a" -gt "$b" ]; then
	echo "a is greater than b"
else
	echo "b is greater than a"
fi

