#!/bin/bash
kubectl delete -f newrelic-infrastructure-k8s-latest.yaml
kubectl delete resourcequota nrlabs-resources-namespace
kubectl delete ds newrelic-infra
kubectl delete pods --all
kubectl delete deployment --all

