#!/bin/bash

kubectl delete -f gce-volumes.yaml
kubectl delete secret mysql-pass
kubectl delete -f mysql-deployment.yaml
kubectl delete -f prestashop-deployment.yaml
