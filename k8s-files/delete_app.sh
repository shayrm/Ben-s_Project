#!/bin/bash

kubectl delete -f ben-app-backend-service.yaml
kubectl delete -f ben-app-frontend-service.yaml

kubectl delete -f ben-app-backend-deployment.yaml
kubectl delete -f ben-app-frontend-deployment.yaml

#kubectl delete -f ben-app-namespace.yaml
