#!/bin/bash

if [ "$1" ]
then
    PREFIX="$1-"
fi

gcloud compute disks delete "${PREFIX}prestashop-1"
gcloud compute disks delete "${PREFIX}prestashop-2"

kubectl delete -f "${PREFIX}gce-volumes.yaml"
kubectl delete secret "${PREFIX}mysql-pass"
kubectl delete -f "${PREFIX}mysql-deployment.yaml"
kubectl delete -f "${PREFIX}prestashop-deployment.yaml"
