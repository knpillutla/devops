kubectl delete deployment shipping-deployment
kubectl delete service shipping
kubectl delete deployment packing-deployment
kubectl delete service packing
kubectl delete deployment picking-deployment
kubectl delete service picking
kubectl delete deployment inventory-deployment
kubectl delete service inventory
kubectl delete deployment orderplanner-deployment
kubectl delete service orderplanner
kubectl delete deployment customer-order-deployment
kubectl delete service customer-order
kubectl delete deployment config-deployment
kubectl delete service config
gcloud container clusters delete wmscluster1