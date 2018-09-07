call gcloud auth login
call gcloud config set project wms-as-a-service
call gcloud config set compute/zone us-east4-b
call gcloud container clusters create wmscluster1
call gcloud container clusters get-credentials wmscluster1
call gcloud compute instances list
call kubectl create clusterrolebinding admin --clusterrole=cluster-admin --serviceaccount=default:default

rem you can give yaml file as well for creating config maps from
call kubectl create configmap wms-env-config --from-file=wms-env-config.conf
rem kubectl delete configmap wms-env-config
rem kubectl describe configmap wms-env-config

rem delete deployments/services
call kubectl delete deployment picking-deployment
call kubectl delete service picking

call kubectl delete deployment config-deployment
call kubectl delete service config

rem create deployments/services
call kubectl apply -f config-service-kubernetes.yaml
call kubectl apply -f picking-service-kubernetes.yaml

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

