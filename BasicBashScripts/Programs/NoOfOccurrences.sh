#!/bin/bash

###################
#Task:            Script to print No. of occurrences of s in Mississipi
#Author:          Naveen Kumar
#Version:         V1
###################

echo "Script to print No. of occurrences of s in Mississipi"

word=Mississipi

grep -o "s" <<< "$word" | wc -l


