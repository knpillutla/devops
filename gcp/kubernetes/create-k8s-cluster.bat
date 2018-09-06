gcloud auth login
gcloud config set project wms-as-a-service
gcloud config set compute/zone us-east4-b
gcloud container clusters create wmscluster1
gcloud container clusters get-credentials wmscluster1
gcloud compute instances list
kubectl create clusterrolebinding admin --clusterrole=cluster-admin --serviceaccount=default:default
kubectl create configmap wms-env-config --from-file=wms-env-config.conf
rem kubectl delete configmap wms-env-config
rem kubectl describe configmap wms-env-config
kubectl delete deployment config-deployment
kubectl delete service config-service
kubectl apply -f config-service-kubernetes.yaml

kubectl delete deployment picking-deployment
kubectl delete service picking-service
kubectl apply -f picking-service-kubernetes.yaml

rem display info for deployment
rem kubectl describe deployment xxxx

rem display info for deployment
kubectl get deployments

rem display info for services
kubectl get services


rem list the pods created by deployment
kubectl get pods -l app=wms-app

rem display information about a pods
rem kubectl describe pod <pod-name>


rem info on kubernetes cluster
kubectl cluster-info


rem deleting deployment and services
rem kubectl delete deployment nginx-deployment
rem kubectl delete service nginx-service

rem get nodes for kubernetes
kubectl get nodes

rem kubectl delete deployment wms-app


rem logs in kubernetes
rem kubectl logs -f podname container-name
kubectl logs -f wms-app-54b944cf49-gpx7m picking



rem expose deployment with external ipconfig
rem kubectl expose deployment hello-web --type=LoadBalancer --port 80 --target-port 8080
