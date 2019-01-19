rem call kubectl apply -f pod-global-mem-limit.yaml
rem create deployments/services


call kubectl apply -f config-service.yaml
kubectl get pods