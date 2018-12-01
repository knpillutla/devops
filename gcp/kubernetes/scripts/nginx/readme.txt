1. install helm
choco install kubernetes-helm

2. create rbac-config.yaml to create tiller service account and install tiller(tiller is server and helm is client. helm is package manager for kubernetes)
kubectl create -f rbac-config.yaml
or
use the below commands to create service account tiller.
kubectl create serviceaccount -n kube-system tiller
kubectl create clusterrolebinding tiller-binding --clusterrole=cluster-admin --serviceaccount kube-system:tiller


3. install tiller  --upgrade below is very important, if you do not use it, cert manager creation will have errors in step5
helm init --service-account tiller --upgrade 

4. verify tiller is install
kubectl get pods --namespace kube-system

5. install kubernetes certificate manager
helm install --name cert-manager --namespace kube-system --set ingressShim.defaultIssuerName=letsencrypt-staging --set ingressShim.defaultIssuerKind=ClusterIssuer stable/cert-manager --version v0.3.0
or
helm install     --name cert-manager     --namespace kube-system     stable/cert-manager

6. Now let’s create a ClusterIssuer resource. A ClusterIssuer represents a certificate authority like Let’s Encrypt from which signed certificates can be obtained. At least one ClusterIssuer resource should be present in order for the certificate manager to begin issuing certificates.

Begin by creating a yaml file named “letsencrypt-staging.yaml” and add the following text to it:


apiVersion: certmanager.k8s.io/v1alpha1
kind: ClusterIssuer
metadata:
  name: letsencrypt-staging
spec:
  acme:
    # The ACME server URL
    server: https://acme-staging-v02.api.letsencrypt.org/directory
    # Email address used for ACME registration
    email: admin@the3dsoft.com
    # Name of a secret used to store the ACME account private key
    privateKeySecretRef:
      name: letsencrypt-sec-staging
    # Enable HTTP01 validations
    http01: {}
	
7. create the staging lets encrypt certificate issuer based on above
cluster-issuer-letsencrypt-staging.yaml

8. In the Kubernetes world, Ingress is an object that manages external access to services within a cluster. An Ingress resource provides load balancing and SSL termination. The NGINX Ingress controller is based on the Ingress resource. We will configure this controller to act as an HTTPS load balancer and forward requests to specific services within the Kubernetes cluster.

Run the following command to install the NGINX Ingress controller into the system namespace with RBAC enabled:

helm install stable/nginx-ingress --name uck-nginx --set rbac.create=true --namespace kube-system

9. Let’s create the Ingress resource and specify a rule to forward requests to the service “my-webapp.” We need to annotate the resource definition so that Cert-Manager can automate the process of acquiring the required TLS certificate from Let’s Encrypt.

Begin by creating a yaml file named “the3dsoft-ingress.yaml” and add the following text to it:

apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: the3dsoft-ingress
  annotations:
    kubernetes.io/ingress.class: nginx
    certmanager.k8s.io/cluster-issuer: letsencrypt-staging
    kubernetes.io/tls-acme: "true"
spec:
  rules:
  - host: app.example.com
    http:
      paths:
      - path: /
        backend:
          serviceName: my-webapp
          servicePort: 80
  tls:
  - secretName: tls-staging-cert
    hosts:
    - app.example.com
	
10. create ingress resource above 
kubectl create -f the3dsoft-ingress.yaml

11. open your https website the url address is the one from ingress controller, use external ip
use the below to get the ingress controller external ip address. set this address in the cloud dns A name for the3dsoft.com
kubectl --namespace kube-system get services -o wide


	