Order of deployment:
kubectl create -f app-deployment.yaml
kubectl create -f app-service.yaml
kubectl create namespace ingress
kubectl create -n ingress -f default-backend-deployment.yaml
kubectl create -n ingress -f default-backend-service.yaml
kubectl create -n ingress -f nginx-ingress-controller-config-map.yaml
kubectl create -n ingress -f nginx-ingress-controller-deployment.yaml
kubectl create -n ingress -f nginx-ingress-controller-service.yaml
kubectl create -n ingress -f nginx-ingress-controller-roles.yaml
kubectl create -n ingress -f nginx-ingress-controller-service.yaml
kubectl create -f app-ingress.yaml
kubectl create -f nginx-ingress.yaml

Also, add to /etc/hosts: 
127.0.0.1 crontestsite01.com
