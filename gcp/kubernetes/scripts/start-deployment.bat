
rem create deployments/services
rem call config service deployment in initiate service to get time for it to startup, for others to get config from this service
rem call kubectl apply -f config-service-kubernetes.yaml
rem timeout /t 40 /nobreak > NUL
call kubectl apply -f user-service-kubernetes.yaml
TIMEOUT 120
call kubectl apply -f customer-order-service-kubernetes.yaml
TIMEOUT 120
call kubectl apply -f orderplanner-service-kubernetes.yaml
TIMEOUT 120
call kubectl apply -f inventory-service-kubernetes.yaml
TIMEOUT 120
call kubectl apply -f picking-service-kubernetes.yaml
TIMEOUT 120
call kubectl apply -f packing-service-kubernetes.yaml
TIMEOUT 120
call kubectl apply -f shipping-service-kubernetes.yaml
rem TIMEOUT 120
rem call kubectl apply -f redis-service-kubernetes.yaml
TIMEOUT 120
call kubectl apply -f wmsui-service-kubernetes.yaml
rem TIMEOUT 120
rem call kubectl apply -f event-monitor-service-kubernetes.yaml
rem TIMEOUT 120
rem call kubectl apply -f event-monitor-redis-service-kubernetes.yaml
rem TIMEOUT 120
rem call kubectl apply -f nginx-k8s-deployment.yaml
rem display info for deployment
rem kubectl describe deployment xxxx

rem display info for deployment
call kubectl get deployments

rem display info for services
call kubectl get services


rem list the pods created by deployment
call kubectl get pods -l app=wms-app

rem display information about a pods
rem kubectl describe pod <pod-name>


rem info on kubernetes cluster
call kubectl cluster-info


rem deleting deployment and services
rem kubectl delete deployment nginx-deployment
rem kubectl delete service nginx-service

rem get nodes for kubernetes
call kubectl get nodes

rem kubectl delete deployment wms-app


rem logs in kubernetes
rem kubectl logs -f podname container-name
rem kubectl logs -f wms-app-54b944cf49-gpx7m picking


