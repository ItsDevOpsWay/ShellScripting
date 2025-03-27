#!/bin/bash

####################
#Task:             To print the processID of all the Ubuntu processes that are running in the server
#Author:           Naveen Kumar
#Version:          V1
####################

set -x #Debug mode
set -e #Exit the error when there is an error
set -o #Pipefail


echo "Print the processID of all the Ubuntu processes that are running in the server:"
ps -ef | grep "ubuntu" | awk -F " " '{print $2}'


