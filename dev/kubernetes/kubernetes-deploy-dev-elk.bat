rem deploy elastic search services
kubectl apply -f ./esdata1-persistentvolumeclaim.yaml
kubectl apply -f ./elasticsearch-deployment.yaml
kubectl apply -f ./elasticsearch-service.yaml

rem deploy logstash services
kubectl apply -f ./logstash-deployment.yaml
kubectl apply -f ./logstash-service.yaml

rem deploy kibana services
kubectl apply -f ./kibana-deployment.yaml
kubectl apply -f ./kibana-service.yaml