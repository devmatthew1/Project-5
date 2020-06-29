#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=surelay/udacity-project-five:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-project-five --port=80 --image=$dockerpath  

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-project-five 8000:80