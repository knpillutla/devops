kubectl create serviceaccount -n kube-system tiller
kubectl create clusterrolebinding tiller-binding --clusterrole=cluster-admin --serviceaccount kube-system:tiller
helm init --service-account tiller --upgrade 
kubectl get pods --namespace kube-system
TIMEOUT 120
rem helm install --name cert-manager --namespace kube-system --set ingressShim.defaultIssuerName=letsencrypt-staging --set ingressShim.defaultIssuerKind=ClusterIssuer stable/cert-manager
rem kubectl apply -f clusterissuer-letsencrypt-staging.yml

helm install --name cert-manager --namespace kube-system --set ingressShim.defaultIssuerName=letsencrypt-prod --set ingressShim.defaultIssuerKind=ClusterIssuer stable/cert-manager
TIMEOUT 20
kubectl apply -f clusterissuer-letsencrypt-prod.yml
TIMEOUT 20
kubectl apply -f nginx-config-map.yml
TIMEOUT 20
kubectl apply -f nginx-service.yml
TIMEOUT 20
rem kubectl apply -f the3dsoft-ingress.yml
helm install stable/nginx-ingress --namespace kube-system
TIMEOUT 20
rem verify ingress controller
kubectl --namespace kube-system get services -o wide 
TIMEOUT 20
kubectl apply -f the3dsoft-https-ingress-prod.yml
TIMEOUT 20
