#!/bin/bash

# Stop and remove any existing containers
sudo docker stop $(sudo docker ps -a -q) || true
sudo docker rm $(sudo docker ps -a -q) || true

# Change directory to where Dockerfile is located
cd ~/downloads

# Build the Docker image
sudo docker build -t ec2-flask:v1.0 -f Dockerfile .

# Run the newly built Docker image
sudo docker run -d -p 80:5000 --name ec2-flask ec2-flask:v1.0
