call gcloud auth login
call gcloud config set project wms-as-a-service
call gcloud config set compute/zone us-east4-b
rem call gcloud container clusters create wmscluster1
rem for creating elastic search logging
call gcloud container clusters create wmscluster1 --no-enable-cloud-logging --machine-type=custom-6-16288
call gcloud container clusters get-credentials wmscluster1
call gcloud compute instances list
call kubectl create clusterrolebinding admin --clusterrole=cluster-admin --serviceaccount=default:default

rem you can give yaml file as well for creating config maps from
rem call kubectl create configmap wms-env-config --from-file=wms-env-config.conf
rem kubectl delete configmap wms-env-config
rem kubectl describe configmap wms-env-config

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

rem create deployments/services
call kubectl apply -f config-service-kubernetes.yaml
call kubectl apply -f customer-order-service-kubernetes.yaml
call kubectl apply -f orderplanner-service-kubernetes.yaml
call kubectl apply -f inventory-service-kubernetes.yaml
call kubectl apply -f picking-service-kubernetes.yaml
call kubectl apply -f packing-service-kubernetes.yaml
call kubectl apply -f shipping-service-kubernetes.yaml
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


