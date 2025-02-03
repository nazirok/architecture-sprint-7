minikube start --cni=calico
kubectl get pods -l k8s-app=calico-node -A
