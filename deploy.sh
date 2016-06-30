#!/bin/bash

if [ "$1" ]
then
    PREFIX="$1-"
fi

gcloud compute disks create "${PREFIX}prestashop-1" --size "10"
gcloud compute disks create "${PREFIX}prestashop-2" --size "10"

kubectl create -f "${PREFIX}gce-volumes.yaml"
kubectl create secret generic "${PREFIX}mysql-pass" --from-file=password.txt
kubectl create -f "${PREFIX}mysql-deployment.yaml"
kubectl create -f "${PREFIX}prestashop-deployment.yaml"
