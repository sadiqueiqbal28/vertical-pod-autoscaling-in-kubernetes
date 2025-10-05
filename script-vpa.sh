#!/bin/bash

kubectl create ns prod
kubectl apply -f deployment.yml
kubectl apply -f service.yml
kubectl apply -f vpa.yml

for i in {1..5}
do
kubectl run load-$i --image=busybox -n prod --restart=Never --command -- sh -c "while true; do wget -q -O- http://pw-svc.prod.svc.cluster.local; done"
sleep 2
done