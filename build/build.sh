#!/bin/bash

# Build the Docker image
docker build -t my-react-app .

# Check if the build was successful
if [ $? -eq 0 ]; then
  echo "Docker image built successfully"
else
  echo "Error: Docker image build failed"
  exit 1
fi