rem call kubectl apply -f pod-global-mem-limit.yaml
rem create deployments/services
call kubectl apply -f timescaledb-service-kubernetes.yaml
TIMEOUT 20
call kubectl apply -f config-service-kubernetes.yaml
kubectl get pods