#!/bin/bash


############################
# Author: Busi Pieterson
# Date: 11/August
#
# Version: v1
#
# This script will report the AWS resource usage
#############################

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM users

# list s3 buckets
echo "Print list of s3 Buckets"
aws s3 ls

# list EC2 instances
echo "Print list of EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
echo "Print List of lambda functions"
aws lambda list-functions

# list IAM users
echo "Print list of Iam users"
aws iam list-users