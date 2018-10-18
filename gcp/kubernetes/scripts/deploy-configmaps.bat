rem you can give yaml file as well for creating config maps from
kubectl create configmap wms-env-config --from-file=wms-env-config.yaml
rem kubectl delete configmap wms-env-config
kubectl describe configmap wms-env-config
