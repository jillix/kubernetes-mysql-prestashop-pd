#!/bin/bash

kubectl create -f gce-volumes.yaml
kubectl create secret generic mysql-pass --from-file=password.txt
kubectl create -f mysql-deployment.yaml
kubectl create -f prestashop-deployment.yaml
