#!/bin/bash
kubectl create configmap tidy-conf --from-file=basvi/conf/

envsubst < tidy.yaml | kubectl apply -f -

