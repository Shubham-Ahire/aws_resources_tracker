#!/bin/bash



##############
#Autor:Shubham Ahire
#Date: 8/7/2024
#
#
#This script will report the AWS resource usage
###############################################

#AWS EC2
#AWS S3
#AWS lambda
#AWS IAM Users

set -x

#list s3 buckets
echo "Print the S3 Users"
aws s3 ls

#list ec2 instances
echo "Print the EC2 Instance running"
#Here the jq will only print what we are trying to fetch like here we only want to print the InstanceId..
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
#aws ec2 describe-instances

#list lambda funtions
echo "Print the Lambda funtions"
aws lambda list-functions

#list IAM user
echo "Print the IAM Users"
aws iam list-users




