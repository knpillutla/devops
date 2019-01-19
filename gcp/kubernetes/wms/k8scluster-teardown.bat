rem rem kubectl delete deployment event-monitor-deployment
rem rem kubectl delete service event-monitor
rem kubectl delete deployment shipping-deployment
rem kubectl delete service shipping
rem kubectl delete deployment packing-deployment
rem kubectl delete service packing
rem kubectl delete deployment picking-deployment
rem kubectl delete service picking
rem kubectl delete deployment inventory-deployment
rem kubectl delete service inventory
rem kubectl delete deployment orderplanner-deployment
rem kubectl delete service orderplanner
rem kubectl delete deployment customer-order-deployment
rem kubectl delete service customer-order
rem kubectl delete deployment wmsui-deployment
rem kubectl delete service wmsui
rem kubectl delete deployment config-deployment
rem kubectl delete service config
gcloud container clusters delete wmscluster100