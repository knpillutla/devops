rem you can use either create or apply
rem kubectl create -f https://k8s.io/examples/service/access/hello.yaml
rem kubectl apply -f ./nginx-k8s-deployment.yaml
rem create service, this services exposes port 80 as 30089 (access using http://localhost:30089)
rem kubectl create -f ./nginx-k8s-service.yaml

rem create both deployment and service together. You can either use create or apply. But using apply will help with rolling deploys i think
kubectl apply -f ./nginx-k8s-kubernetes.yaml

rem display info for deployment
rem kubectl describe deployment xxxx

rem display info for deployment
kubectl get deployments

rem display info for services
kubectl get services


rem list the pods created by deployment
kubectl get pods -l app=nginx

rem display information about a pods
rem kubectl describe pod <pod-name>


rem info on kubernetes cluster
kubectl cluster-info


rem deleting deployment and services
rem kubectl delete deployment nginx-deployment
rem kubectl delete service nginx-service

rem get nodes for kubernetes
kubectl get nodes
