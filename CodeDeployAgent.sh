#!/bin/bash

set -e 


# This is a script to download a CodeDeploy agent on an EC2 instance. 

sudo apt update

sudo apt install ruby-full -y

sudo apt install ruby-full

wget https://aws-codedeploy-ap-south-1.s3.ap-south-1.amazonaws.com/latest/install

chmod +x ./install

sudo ./install auto

systemctl status codedeploy-agent 


