kubectl create serviceaccount -n kube-system tiller
kubectl create clusterrolebinding tiller-binding --clusterrole=cluster-admin --serviceaccount kube-system:tiller
helm init --service-account tiller --upgrade 
kubectl get pods --namespace kube-system
rem helm install --name cert-manager --namespace kube-system --set ingressShim.defaultIssuerName=letsencrypt-staging --set ingressShim.defaultIssuerKind=ClusterIssuer stable/cert-manager
rem kubectl apply -f clusterissuer-letsencrypt-staging.yml
pause
helm install --name cert-manager --namespace kube-system --set ingressShim.defaultIssuerName=letsencrypt-prod --set ingressShim.defaultIssuerKind=ClusterIssuer stable/cert-manager
pause
kubectl apply -f clusterissuer-letsencrypt-prod.yml
pause
kubectl apply -f nginx-config-map.yml
pause
kubectl apply -f nginx-service.yml
pause
rem kubectl apply -f the3dsoft-ingress.yml
helm install stable/nginx-ingress --namespace kube-system
pause
rem verify ingress controller
kubectl --namespace kube-system get services -o wide 
pause
kubectl apply -f the3dsoft-https-ingress-prod.yml
pause
