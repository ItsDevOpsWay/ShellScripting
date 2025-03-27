#!/bin/bash

###########################################
#Task:                          To check the Node health
#Author:                        Naveen Kumar
#Version:                       V1
###########################################

################
set -x         #Debug mode


#To print the disk space
echo "Print the Disk space:"
df -h

#To print the free memory
echo "Print the free memory:"
free -g

#To print the no. of CPUs
echo "Print the No. of CPUs:"
nproc


