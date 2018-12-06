call kubectl delete deployment shipping-deployment

call kubectl delete deployment packing-deployment

call kubectl delete deployment picking-deployment

call kubectl delete deployment inventory-deployment

call kubectl delete deployment orderplanner-deployment

call kubectl delete deployment event-monitor-deployment

call kubectl delete deployment event-monitor-redis-deployment

call kubectl delete deployment customer-order-deployment

call kubectl delete deployment user-deployment

rem call kubectl delete deployment config-deployment

call kubectl delete deployment myredis-deployment

call kubectl delete deployment wmsui-deployment


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


