#!/bin/sh -l

set -xe

sh -c "aws configure set region ${aws_region}"
sh -c "aws configure set aws_access_key_id ${aws_access_key_id}"
sh -c "aws configure set aws_secret_access_key ${aws_secret_access_key}"
sh -c "aws eks update-kubeconfig --region ${aws_region} --name ${cluster_name}"

sh -c "$*"
