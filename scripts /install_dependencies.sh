#!/bin/bash

sudo apt-get update
sudo apt-get install openjdk-11-jdk unzip -y

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

aws s3 cp s3://codepipeline-bucket-25/app.jar /home/ubuntu/app.jar 
