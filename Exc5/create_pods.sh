kubectl run app-front-end-app --image=nginx --labels role=front-end --expose --port 80
kubectl run app-back-end-api --image=nginx --labels role=back-end-api --expose --port 80

kubectl run app-admin-front-end --image=nginx --labels role=admin-front-end --expose --port 80
kubectl run app-admin-back-end-api --image=nginx --labels role=admin-back-end-api --expose --port 80