rem call kubectl apply -f pod-global-mem-limit.yaml
rem create deployments/services


call kubectl apply -f service-config.yaml
kubectl get pods