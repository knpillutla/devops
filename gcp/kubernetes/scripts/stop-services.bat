call kubectl delete service shipping

call kubectl delete service packing

call kubectl delete service picking

call kubectl delete service inventory

call kubectl delete service orderplanner

call kubectl delete service event-monitor

call kubectl delete service event-monitor-redis

call kubectl delete service customer-order

call kubectl delete service user

call kubectl delete service config

call kubectl delete service myredis

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


