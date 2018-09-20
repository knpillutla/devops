start kubernetes cluster with elastic search logging

Elasticsearch/Kibana stack needs to be added manually if the cluster is supposed to run on Google Container Engine (GKE). Using the information given in this post, I was able to get it to work performing the following steps:

1. Start a GKE Cluster without cloud logging
gcloud container --project <PROJECT_ID> clusters create <CLUSTER_ID> --no-enable-cloud-logging

2. Add a configured fluentd container to each running node by using a kubernetes DaemonSet.
kubectl create -f ./elk-setup/fluentd-es.yaml

fluentd-es.yaml
===================
apiVersion: extensions/v1beta1
kind: DaemonSet
metadata:
  name: fluentd-elasticsearch
  namespace: kube-system
  labels:
    app: fluentd-logging

spec:
  template:
    metadata:
      labels:
        app: fluentd-es
    spec:
      containers:
      - name: fluentd-elasticsearch
        image: gcr.io/google_containers/fluentd-elasticsearch:1.15
        resources:
          limits:
            memory: 200Mi
          requests:
            cpu: 100m
            memory: 200Mi
        volumeMounts:
        - name: varlog
          mountPath: /var/log
        - name: varlibdockercontainers
          mountPath: /var/lib/docker/containers
          readOnly: true
      volumes:
      - name: varlog
        hostPath:
          path: /var/log
      - name: varlibdockercontainers
        hostPath:
          path: /var/lib/docker/containers
		  
3. Add elasticsearch and kibana pods and services.
kubectl create -f ./elk-setup/es-controller.yaml
kubectl create -f ./elk-setup/es-service.yaml
kubectl create -f ./elk-setup/kibana-controller.yaml
kubectl create -f ./elk-setup/kibana-service.yaml

Note below that the kubernetes.io/cluster-service: "true" label (present in the original files) has been removed. Having this label in the definitions resulted in termination of the running pods.

es-controller.yaml
======================
apiVersion: v1
kind: ReplicationController
metadata:
  name: elasticsearch-logging-v1
  namespace: kube-system
  labels:
    k8s-app: elasticsearch-logging
    version: v1
spec:
  replicas: 2
  selector:
    k8s-app: elasticsearch-logging
    version: v1
  template:
    metadata:
      labels:
        k8s-app: elasticsearch-logging
        version: v1
        kubernetes.io/cluster-service: "true"
    spec:
      containers:
      - image: gcr.io/google_containers/elasticsearch:1.8
        name: elasticsearch-logging
        resources:
          limits:
            cpu: 100m
          requests:
            cpu: 100m
        ports:
        - containerPort: 9200
          name: db
          protocol: TCP
        - containerPort: 9300
          name: transport
          protocol: TCP
        volumeMounts:
        - name: es-persistent-storage
          mountPath: /data
      volumes:
      - name: es-persistent-storage
        emptyDir: {}
		
	es-service.yaml
	=================
apiVersion: v1
kind: Service
metadata:
  name: elasticsearch-logging
  namespace: kube-system
  labels:
    k8s-app: elasticsearch-logging
    kubernetes.io/name: "Elasticsearch"
spec:
  ports:
  - port: 9200
    protocol: TCP
    targetPort: db
  selector:
    k8s-app: elasticsearch-logging
	
	kibana-controller.yaml
	============================
apiVersion: v1
kind: ReplicationController
metadata:
  name: kibana-logging-v1
  namespace: kube-system
  labels:
    k8s-app: kibana-logging
    version: v1
spec:
  replicas: 1
  selector:
    k8s-app: kibana-logging
    version: v1
  template:
    metadata:
      labels:
        k8s-app: kibana-logging
        version: v1
        kubernetes.io/cluster-service: "true"
    spec:
      containers:
      - name: kibana-logging
        image: gcr.io/google_containers/kibana:1.3
        resources:
          limits:
            cpu: 100m
          requests:
            cpu: 100m
        env:
          - name: "ELASTICSEARCH_URL"
            value: "http://elasticsearch-logging:9200"
        ports:
        - containerPort: 5601
          name: ui
          protocol: TCP
		  

kibana-service.yaml
=====================
apiVersion: v1
kind: Service
metadata:
  name: kibana-logging
  namespace: kube-system
  labels:
    k8s-app: kibana-logging
    kubernetes.io/name: "Kibana"
spec:
  ports:
  - port: 5601
    protocol: TCP
    targetPort: ui
  selector:
    k8s-app: kibana-logging
	
4. Create a kubectl proxy
kubectl proxy

5. Watch your logs with kibana at
http://localhost:8001/api/v1/proxy/namespaces/kube-system/services/kibana-logging/

