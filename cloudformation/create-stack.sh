#!/bin/bash

aws cloudformation create-stack \
--stack-name $1 \
--template-body file://templates/$2.yml \
--parameters file://parameters/$3.json \
--region=us-east-1 --capabilities CAPABILITY_IAM --capabilities CAPABILITY_NAMED_IAM