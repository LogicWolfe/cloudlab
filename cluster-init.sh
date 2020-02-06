doctl kubernetes cluster create --maintenance-window "any=19:00" --region sgp1 --size s-1vcpu-2gb --count 3 cloudlab
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0-rc3/aio/deploy/recommended.yaml
kubectl delete clusterrolebinding kubernetes-dashboard
kubectl create clusterrolebinding kubernetes-dashboard --clusterrole cluster-admin --serviceaccount=kubernetes-dashboard:kubernetes-dashboard