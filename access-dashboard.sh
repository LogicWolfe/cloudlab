#!/bin/bash
TOKEN_NAME=`kubectl get secret -n kubernetes-dashboard | grep dashboard-token | cut -d ' ' -f 1`
echo `kubectl describe secret $TOKEN_NAME -n kubernetes-dashboard | grep token:`
open http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/
kubectl proxy
