#!/bin/bash
component=$1
environment=$2 # do not use env here, because it is reserved variable in linux.
app_version=$3
yum install python3.11-devel python3.11-pip -y
pip3.11 install ansible botocore boto3
ansible-pull -U https://github.com/Gopi1214/roboshop-ansible-roles-tf.git -e component=$component -e env=$environment -e app_version=$app_version main-tf.yaml