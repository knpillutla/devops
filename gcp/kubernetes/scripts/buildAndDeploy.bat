SET GOOGLE_CLOUD_PROJECT_ID=bright-seer-219503
 
rem build dependencies
rem call build-wms-dependencies.bat %GOOGLE_CLOUD_PROJECT_ID%

rem build and tag images for google container registry
call build-wms-service-images.bat %GOOGLE_CLOUD_PROJECT_ID%

rem push images to google container registry
call deploy-images-gcp.bat %GOOGLE_CLOUD_PROJECT_ID%

rem deploy config map
rem deploy-configmaps.bat

rem deploy services
rem delete deployments/services
call kubectl delete deployment shipping-deployment
call kubectl delete service shipping

call kubectl delete deployment packing-deployment
call kubectl delete service packing

call kubectl delete deployment picking-deployment
call kubectl delete service picking

call kubectl delete deployment inventory-deployment
call kubectl delete service inventory

call kubectl delete deployment orderplanner-deployment
call kubectl delete service orderplanner

call kubectl delete deployment customer-order-deployment
call kubectl delete service customer-order


call kubectl delete deployment config-deployment
call kubectl delete service config

call kubectl delete deployment nginx-deployment
call kubectl delete service nginx-deployment

rem call build-docker-images-gcp.bat %GOOGLE_CLOUD_PROJECT_ID%

rem create deployments/services
call kubectl apply -f config-service-kubernetes.yaml
call kubectl apply -f customer-order-service-kubernetes.yaml
call kubectl apply -f orderplanner-service-kubernetes.yaml
call kubectl apply -f inventory-service-kubernetes.yaml
call kubectl apply -f picking-service-kubernetes.yaml
call kubectl apply -f packing-service-kubernetes.yaml
call kubectl apply -f shipping-service-kubernetes.yaml
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

