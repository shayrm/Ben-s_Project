#!/bin/bash

# Create new namespace - Ben-app
kubectl apply -f ben-app-namespace.yaml

# Define RBAC for backend
kubectl apply -f ben_app_rabc_pod_creator.yaml

# Deploy application and services
kubectl apply -f ben-app-backend-deployment.yaml
kubectl apply -f ben-app-frontend-deployment.yaml
kubectl apply -f ben-app-backend-service.yaml
kubectl apply -f ben-app-frontend-service.yaml


