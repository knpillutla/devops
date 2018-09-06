readme
===========
Install glcoud sdk from google cloud platform

1. access to kubernetes from other services can be accomplished in two ways
   a. either using the environment variables (you can use inject the kubernetes environment variables of a service in another service's yaml file in environment, example below)
        - name: CONFIG_SERVICE_URL
          value: http://$(CONFIG_SERVICE_HOST):$(CONFIG_SERVICE_PORT)
    b. using the name of the service directly (like a dns). In the below, kubernets creates the config service with the name config.default.svc.cluster.local (using namespace notation, config will work or you can use namespace notation too)
       - name: CONFIG_SERVICE_URL
          value: http://config
 		  
2. you can connect to any running pod using bash like below
kubectl exec -it config-deployment-f4fb64989-45hvp /bin/sh

3. when inside the pod, type command nslookup serviceName (if it gives output means (similar to config.default.svc.cluster.local), kubernetes can recognize the service or else go to below url)
https://kubernetes.io/docs/tasks/debug-application-cluster/debug-service/#does-the-service-work-by-ip

4. you can get all the running services using below
rem kubectl get --all-namespaces services

5. find environment variables for a pod 
kubectl exec my-nginx-3800858182-jr4a2 -- printenv

6. Below gives the list of all compute instances
gcloud compute instances list 

7. get kubernetes cluster info
kubectl cluster-info

8. Use the below to login, create kubernetes cluster and destroy the cluster
gcloud auth login
gcloud config set project wms-as-a-service
gcloud config set compute/zone us-east4-b
gcloud container clusters create wmscluster1
gcloud container clusters get-credentials wmscluster1
gcloud container clusters delete wmscluster1

9. create config map
kubectl create configmap wms-env-config --from-file=wms-env-config.conf

10. create deployment(pods) and service
kubectl apply -f config-deployment.yaml

11. service is front end to all the pods and service name acts as load balancer (round robin) to pods. Other kubernetes services can call the service name directly from spring boot.

12. in service definition yaml file, service applies to app label. Deployments that have the same app label and port number will be selected as backend to the service

13. Deployment created one or more pods and it is used for rolling deploys (if you directly create pod without deployment, then rolling updates will not be possible)

14. once deployment/service is created, you can check the status by using
kubectl get deployments
kubectl get pods
kubectl get services

15. logs can be tailed using the below (similar to a docker logs command)
kubectl logs -f config-deployment-f4fb64989-2n26d (if only one container exists in a pod)
kubectl logs -f config-deployment-f4fb64989-2n26d containerName (if more than one container exists in a pod)

16. you can describe deployment/pod/service
kubectl describe deployment config-deployment
kubectl describe pod config-xxxxx (get the pod name from kubectl get pods)
kubectl describe service config 
		  
		  