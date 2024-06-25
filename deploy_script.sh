#!/bin/bash

# Stop and remove any existing container with the same name
sudo docker stop ec2-flask || true
sudo docker rm ec2-flask || true

# Change directory to where Dockerfile is located
cd /home/ec2-user/downloads

# Build the Docker image
sudo docker build -t ec2-flask:${GITHUB_SHA} .

# Run the Docker container
sudo docker run -d -p 5000:5000 --name ec2-flask ec2-flask:${GITHUB_SHA}
