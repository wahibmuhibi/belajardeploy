#!/bin/bash

# Stop and remove any existing containers
sudo docker stop ec2-flask || true
sudo docker rm ec2-flask || true

# Change directory to where Dockerfile is located
cd /home/ec2-user/downloads

# Build the Docker image (if needed)
# This step may not be necessary if you're pushing the image directly from GitHub Actions
# sudo docker build -t ec2-flask:v1.0 -f Dockerfile .

# Run the Docker image
sudo docker run -d -p 80:5000 --name ec2-flask:v1.0 ec2-flask:v1.0
