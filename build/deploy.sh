#!/bin/bash

# Pull the latest image from Docker Hub (replace your image name and repo)
docker pull <your-dockerhub-username>/my-react-app:latest

# Stop and remove any running containers
docker stop react-app-container
docker rm react-app-container

# Run the new container
docker run -d --name react-app-container -p 80:80 <your-dockerhub-username>/my-react-app:latest

# Check if the container started successfully
if [ $? -eq 0 ]; then
  echo "Deployment successful!"
else
  echo "Error: Deployment failed"
  exit 1
fi