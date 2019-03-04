#!/bin/bash
# Note minikube should already be running
kubectl config use-context minikube
eval $(minikube docker-env)

