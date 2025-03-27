#!/bin/bash

##################
#Task:           Script to print the AWS resource usage.
#Author:         Naveen Kumar
#Version:        V1
##################


#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

echo "List s3 Buckets"
aws s3 ls

echo "List EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "List AWS Lambda functions"
aws lambda list-functions

echo "List IAM Users"
aws iam list-users


