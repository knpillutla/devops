gcloud auth login
gcloud config set project wms-as-a-service
gcloud config set compute/zone us-east4-b
gcloud container clusters create wmscluster1
gcloud container clusters get-credentials wmscluster1
gcloud compute instances list
kubectl create clusterrolebinding admin --clusterrole=cluster-admin --serviceaccount=default:default

rem you can give yaml file as well for creating config maps from
kubectl create configmap wms-env-config --from-file=wms-env-config.conf
rem kubectl delete configmap wms-env-config
rem kubectl describe configmap wms-env-config

rem delete deployments/services
kubectl delete deployment picking-deployment
kubectl delete service picking

kubectl delete deployment config-deployment
kubectl delete service config

rem create deployments/services
kubectl apply -f config-service-kubernetes.yaml
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

rem FIND ENVIRONMENT VARIABLES FOR A POD OR SERVICE
REM kubectl exec my-nginx-3800858182-jr4a2 -- printenv | grep SERVICE

rem TO GET ALL KUBERNETES SERVICES including kube dns
rem kubectl get --all-namespaces services

rem to bash in to the pod
rem kubectl -it exec config-76f9bb8dd-5pxv9 -c config -- /bin/sh
rem when inside the pod, type command nslookup serviceName (if it gives output means (similar to config.default.svc.cluster.local), kubernetes can recognize the service or else go to below url)
rem https://kubernetes.io/docs/tasks/debug-application-cluster/debug-service/#does-the-service-work-by-ip


