rem call kubectl apply -f pod-global-mem-limit.yaml
rem create deployments/services
rem call kubectl apply -f timescaledb-service-kubernetes.yaml
rem TIMEOUT 20
call kubectl apply -f config-service-kubernetes.yaml
kubectl get pods